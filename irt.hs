
module Irt where
 import Parser
 import Maybe
 import Char
 
 data IRNode = IRSeq IRNode IRNode 
             | MOVE IRNode IRNode
             | MEM IRNode
             | DATA Int
             | MOVIR IRNode Double
             | STORE IRNode IRNode Integer
             | LOAD IRNode IRNode Integer
             | JMP String
             | NOP
             | LABEL String
             | WRR IRNode
             | HALT
             | REG Int
             | ADDR IRNode IRNode IRNode
             | SUBR IRNode IRNode IRNode
             | MULR IRNode IRNode IRNode
             | DIVR IRNode IRNode IRNode
             | ADDI IRNode IRNode Int
             | BEQZR IRNode String
             | BNEZR IRNode String
             | BGEZR IRNode String
             | BLTZR IRNode String  
             | WRS Int
             | RDR IRNode
     deriving (Show,Eq)
 
 data Op = ADD | SUB | MUL | DIV
     deriving (Show,Eq)
     
 --Wrapper for trSeq. We should just be able to call "transform" and let it go
 --We always have a newline string stored in memory location 0, however most of
 --the code will still work if this isn't the case
 --Since no variables can start with a number, we use "0jumps" to track indices
 --for jumps in IFs and REPs
 transform :: Sequence -> IRNode
 transform seq = trSeq seq [("",0),("0jumps",0)]
 
 --Translates a program into an IRT
 trSeq :: Sequence -> [(String,Int)] -> IRNode
 trSeq (Seq stmnt seq) symbols = IRSeq newStmnts (trSeq seq newSymbols)
     where (newStmnts, newSymbols) = (trStmnt stmnt symbols) 
 trSeq Empty symbols = HALT
 
 --Translates a subroutine (branch or loop) into an IRT
 trSub :: Sequence -> [(String,Int)] -> (IRNode,[(String,Int)])
 trSub (Seq stmnt seq) symbols  = (IRSeq stmnt1 stmnt2,symbols2)
     where (stmnt1, symbols1) = (trStmnt stmnt symbols) 
           (stmnt2, symbols2) = (trSub seq symbols1 )
 trSub Empty symbols  = (NOP,symbols)

 --Translates a single statement into an IRT node
 
 --I may not need to account for strings in the symbol table, that memory can
 --probably be reused with a bit of cleverness
 trStmnt :: Statement -> [(String,Int)] -> (IRNode,[(String,Int)])
 trStmnt (Ass var exp) symbols 
  | isNothing (lookup var symbols) = (IRSeq (alloc 4) newStmnt,newSymbols)
  | otherwise = (STORE (trExp exp symbols) (intConst (fromJust(lookup var symbols))) 0,symbols)
     where (newStmnt,newSymbols) = trStmnt (Ass var exp) ((var,varAddr):symbols)
           varAddr = firstVarAddr + 4
           (firstVar,firstVarAddr) = if (length symbols) == 0 
                                      then ("",-4) else (head symbols)
 --This terrible calculation will place a rogue entry in the symbol table to 
 --prevent any variables overwriting the memory where the string is stored.
 --This is a really terrible idea, and the compiler can be improved by 
 --intelligently reusing memory after a string has been printed. This is another
 --TODO
 trStmnt (Write (Str s)) symbols = 
  (IRSeq (allocStr s) (WRS (fAddr+4)),("",length s + 4 -((length s+1) `mod_` 4)+fAddr+1):symbols)
   where (fVar,fAddr) = if (length symbols) == 0 then ("",-4) else (head symbols)
 trStmnt (Write exp) symbols = (WRR (trExp exp symbols),symbols)
 trStmnt (WriteLn) symbols = (WRS 0,symbols)
    {-trStmnt (Write (Str "\n")) symbols-}
 trStmnt (Read var) symbols 
  | isNothing (lookup var symbols) = (IRSeq (alloc 4) newStmnt,newSymbols)
  | otherwise = (STORE (RDR (REG (-1))) (intConst (fromJust(lookup var symbols))) 0,symbols)
   where (newStmnt,newSymbols) = trStmnt (Read var) ((var,varAddr):symbols)
         varAddr = firstVarAddr + 4
         (firstVar,firstVarAddr) = if (length symbols) == 0 
                                    then ("",-4) else (head symbols)
 trStmnt (Conditional cmp seq) symbols = 
  (IRSeq (trBool cmp lbl symbols) (IRSeq branch (LABEL lbl)),symbols2)
   where (lbl,symbols1) = nextLabel symbols
         (branch,symbols2) = (trSub seq symbols1) 
 trStmnt (Branch cmp b1 b2) symbols = 
    (IRSeq (trBool cmp lbl1 symbols) 
     (IRSeq branch1 
      (IRSeq (JMP lbl2)
       (IRSeq (LABEL lbl1)
        (IRSeq branch2 (LABEL lbl2))))),symbols4)
     where (lbl1,symbols1) = nextLabel symbols
           (branch1,symbols2) = trSub b1 symbols1
           (lbl2,symbols3) = nextLabel symbols2
           (branch2,symbols4) = trSub b2 symbols3
 trStmnt (Loop seq cmp) symbols = 
    (IRSeq (LABEL lbl) 
     (IRSeq body (trBool cmp lbl symbols2)),symbols2)
     where (lbl,symbols1) = nextLabel symbols
           (body,symbols2) = trSub seq symbols1
 
 --Translates a single boolean into an IRT node. Given a comparison of some kind,
 --an escape label, and a symbol table, will return an IR of code which will jump 
 --to the label if the comparison is true, based on the symbol table.
 trBool :: Comp -> String -> [(String,Int)] -> IRNode
 trBool (Eql e1 e2) escape symbols = BNEZR (trExp (Sub e1 e2) symbols) escape
 trBool (Neq e1 e2) escape symbols = BEQZR (trExp (Sub e1 e2) symbols) escape
 trBool (Geq e1 e2) escape symbols = BGEZR (trExp (Sub e2 e1) symbols) escape
 trBool (Leq e1 e2) escape symbols = BGEZR (trExp (Sub e1 e2) symbols) escape
 trBool (Less e1 e2) escape symbols = BLTZR (trExp (Sub e2 e1) symbols) escape
 trBool (Grtr e1 e2) escape symbols = BLTZR (trExp (Sub e1 e2) symbols) escape
 
 --Translates a single expression into an IRT node
 trExp :: Expression -> [(String,Int)] -> IRNode
 trExp (Add e1 e2) symbols = 
  ADDR (REG (-1)) (trExp e1 symbols) (trExp e2 symbols)
 trExp (Sub e1 e2) symbols =
  SUBR (REG (-1)) (trExp e1 symbols) (trExp e2 symbols)
 trExp (Mult e1 e2) symbols =
  MULR (REG (-1)) (trExp e1 symbols) (trExp e2 symbols)
 trExp (Div e1 e2) symbols =  
  DIVR (REG (-1)) (trExp e1 symbols) (trExp e2 symbols)
 trExp (Neg e) symbols =
  SUBR (REG (-1)) (REG 0) (trExp e symbols)
 trExp (Variable var) symbols = 
  LOAD (REG (-1)) (intConst (fromJust (lookup var symbols))) 0
 trExp (Const x) symbols = MOVIR (REG (-1)) x
 
 --Useful shorthands go down here:
 
 --Returns an IRNode containing (effectively) the given integer as a constant
 intConst :: Int -> IRNode
 intConst x = ADDI (REG (-1)) (REG 0) x 
 
 --Allocates the given number of empty bytes
 alloc :: Int -> IRNode
 alloc 0 = NOP
 alloc 1 = DATA 0
 alloc x = IRSeq (DATA 0) (alloc (x-1))
 
 --Allocates memory for the given string
 allocStr :: String -> IRNode
 allocStr xs = allocStr' (xs' ++ (take (4 - ((length xs') `mod_` 4)) (repeat '\0')))
  where xs' = xs ++ "\0"
        allocStr' :: String -> IRNode
        allocStr' [x] = DATA (ord x)
        allocStr' (x:xs) = IRSeq (DATA (ord x)) (allocStr' xs)
        
 --A slightly modified mod, which for x `mod_` y will return y if x|y rather 
 --than 0
 mod_ :: Integral a => a -> a -> a
 mod_ x y | x `mod` y == 0 = y
          | otherwise = x `mod` y
 
 --Given a symbol table containing the number of used labels, returns a string 
 --for the next label, and increments the number of used labels 
 nextLabel :: [(String,Int)] -> (String,[(String,Int)])
 nextLabel (("0jumps",labels):syms) = ("L"++(show labels),("0jumps",labels+1):syms)
 nextLabel (sym:syms) = (lbl,sym:rest)
  where (lbl,rest) = nextLabel syms
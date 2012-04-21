--Codename: incendiary pig
module Cg where
 import Irt as I
 import Lexer as L
 import Parser as P
 import IO
 
 --Canonicalises the given IR tree such that sequencing happens to the right only
 --Building a canonical tree is difficult; building a non-canonical tree and 
 --then fixing it is REALLY easy
 canonicalise :: IRNode -> IRNode
 canonicalise (IRSeq (IRSeq c1 c2) c3) = canonicalise (IRSeq c1 (IRSeq c2 c3))
 canonicalise (IRSeq c1 (IRSeq c2 c3)) = IRSeq c1 (canonicalise (IRSeq c2 c3))
 canonicalise n = n
 
 --Given a canonical IRT, detects and removes any redundant jumps
 remJUMPS :: IRNode -> IRNode
 remJUMPS (IRSeq c1 (IRSeq (JMP x) (IRSeq (LABEL y) c2))) 
    | x == y = IRSeq c1 (remJUMPS c2)
    | otherwise = (IRSeq c1 (IRSeq (JMP x) (IRSeq (LABEL y) (remJUMPS c2))))
 remJUMPS (IRSeq c1 c2) = IRSeq c1 (remJUMPS c2)
 remJUMPS n = n
 
 --Given an IRT, floats all DATA nodes to the top of the tree
 floatDATA :: IRNode -> IRNode
 floatDATA n = n
 
 --Allocates registers for the given IR tree
 --Currently just puts everything into different registers.
 --TODO: make this less terrible at some point
 ralloc :: IRNode -> IRNode
 ralloc n = rNode
  where (rNode,regs) = ralloc' n 1
        ralloc' :: IRNode -> Int -> (IRNode,Int)
        ralloc' (IRSeq c1 c2) regs = ((IRSeq n1 n2),regs2)
         where (n1,regs1) = ralloc' c1 regs
               (n2,regs2) = ralloc' c2 regs1
        ralloc' (REG 0) regs = ((REG 0),regs)
        ralloc' (REG x) regs = ((REG regs),regs+1)
        ralloc' (ADDR c1 c2 c3) regs = (ADDR c1' c2' c3',regs3)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
               (c3',regs3) = ralloc' c3 regs2
        ralloc' (SUBR c1 c2 c3) regs = (SUBR c1' c2' c3',regs3)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
               (c3',regs3) = ralloc' c3 regs2
        ralloc' (MULR c1 c2 c3) regs = (MULR c1' c2' c3',regs3)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
               (c3',regs3) = ralloc' c3 regs2
        ralloc' (DIVR c1 c2 c3) regs = (DIVR c1' c2' c3',regs3)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
               (c3',regs3) = ralloc' c3 regs2    
        ralloc' (ADDI c1 c2 x) regs = (ADDI c1' c2' x,regs2)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1             
        ralloc' (MOVIR c1 x) regs = (MOVIR c1' x,regs1)
         where (c1',regs1) = ralloc' c1 regs
        ralloc' (WRR c) regs = (WRR c',regs1)
         where (c',regs1) = ralloc' c regs
        ralloc' HALT regs = (HALT,regs)
        ralloc' (STORE c1 c2 x) regs = ((STORE c1' c2' x),regs2)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
        ralloc' (LOAD c1 c2 x) regs = ((LOAD c1' c2' x),regs2)
         where (c1',regs1) = ralloc' c1 regs
               (c2',regs2) = ralloc' c2 regs1
        ralloc' (DATA x) regs = (DATA x,regs)
        ralloc' (WRS x) regs = (WRS x,regs)
        ralloc' (RDR n) regs = (RDR n', regs1)
         where (n',regs1) = ralloc' n regs
        ralloc' NOP regs = (NOP,regs)
        ralloc' (LABEL x) regs = (LABEL x, regs)
        ralloc' (BEQZR n s) regs = (BEQZR n' s,regs1)
         where (n',regs1) = ralloc' n regs
        ralloc' (BNEZR n s) regs = (BNEZR n' s,regs1)
         where (n',regs1) = ralloc' n regs
        ralloc' (BGEZR n s) regs = (BGEZR n' s,regs1)
         where (n',regs1) = ralloc' n regs
        ralloc' (BLTZR n s) regs = (BLTZR n' s,regs1)
         where (n',regs1) = ralloc' n regs
        ralloc' (JMP s) regs = (JMP s,regs)


 --Generates code for the given IR tree
 --We always have a newline string stored in memory location 0, and 0 stored in
 --R0
 codegen :: IRNode -> String
 codegen n = "XOR R0,R0,R0\n" ++ (cg (I.allocStr "\n")) ++ (cg n)
 
 cg :: IRNode -> String
 cg (IRSeq c1 c2) = (cg c1) ++ (cg c2)
 cg (REG x) = ""
 cg (DATA x) = "DATA " ++ (show x) ++ "\n"
 cg (WRS x) = "WRS " ++ (show x) ++ "\n"
 cg (WRR r) = (cg r) ++ "WRR " ++ (reg r) ++ "\n"
 cg (RDR r) = "RDR " ++ (reg r) ++ "\n"
 cg (MOVIR r x) = "MOVIR "++(reg r)+++(show x)++"\n"
 cg (ADDR r e1 e2) = (cg e1)++(cg e2)++"ADDR "++(reg r)+++(reg e1)+++(reg e2)++"\n"
 cg (SUBR r e1 e2) = (cg e1)++(cg e2)++"SUBR "++(reg r)+++(reg e1)+++(reg e2)++"\n"
 cg (MULR r e1 e2) = (cg e1)++(cg e2)++"MULR "++(reg r)+++(reg e1)+++(reg e2)++"\n"
 cg (DIVR r e1 e2) = (cg e1)++(cg e2)++"DIVR "++(reg r)+++(reg e1)+++(reg e2)++"\n"
 cg (ADDI r e1 x)  = (cg e1)++"ADDI "++(reg r)+++(reg e1)+++(show x)++"\n"
 cg (STORE e1 r2 x) = (cg e1)++(cg r2)++"STORE "++(reg e1)+++(reg r2)+++(show x)++"\n"
 cg (LOAD r1 r2 x) = (cg r1)++(cg r2)++"LOAD "++(reg r1)+++(reg r2)+++(show x)++"\n"
 cg (HALT) = "HALT\n"
 cg (NOP) = ""
 cg (LABEL str) = str ++ ":NOP\n"
 cg (BEQZR e esc) = (cg e) ++ "BEQZR "++(reg e)+++esc++"\n"
 cg (BNEZR e esc) = (cg e) ++ "BNEZR "++(reg e)+++esc++"\n"
 cg (BGEZR e esc) = (cg e) ++ "BGEZR "++(reg e)+++esc++"\n"
 cg (BLTZR e esc) = (cg e) ++ "BLTZR "++(reg e)+++esc++"\n"
 cg (JMP s) = "JMP " ++ s ++ "\n"
 
 
 --Returns a string representation of the register where the result of the given
 --IRNode should be stored. Not defined for all types of node, use with caution
 reg :: IRNode -> String
 reg (REG x) = "R" ++ (show x)
 reg (ADDR c1 c2 c3) = reg c1
 reg (SUBR c1 c2 c3) = reg c1
 reg (MULR c1 c2 c3) = reg c1
 reg (DIVR c1 c2 c3) = reg c1
 reg (ADDI c1 c2 x) = reg c1
 reg (MOVIR c1 x) = reg c1
 reg (LOAD c1 c2 x) = reg c1
 reg (RDR c1) = reg c1
 
 --Displays all stages of a compilation for debugging
 compile :: String -> IO()
 compile x = do (putStrLn.show.(L.lexer)) x
                putStrLn ""
                (putStrLn.show.(P.parser).(L.lexer)) x
                putStrLn ""
                (putStrLn.show.(I.transform).(P.parser).(L.lexer)) x
                putStrLn ""
                (putStrLn.show.ralloc.canonicalise.(I.transform).(P.parser).(L.lexer)) x
                putStrLn ""
                (putStrLn.codegen.ralloc.canonicalise.(I.transform).(P.parser).(L.lexer)) x

 --Given an input file of source code and an output path, compiles the given 
 --source code and dumps the generated assembly in the given output path
 compileFile :: String -> String -> IO()
 compileFile inPath outPath
  = do inFile <- openFile inPath ReadMode
       outFile <- openFile outPath WriteMode
       y <- hGetContents inFile
       compile y
       hPutStr outFile ((codegen.ralloc.canonicalise.(I.transform).(P.parser).(L.lexer)) y)
       hClose outFile
       hClose inFile
 

 --This is why I love Haskell 
 (+++) :: String -> String -> String
 (+++) x y = x++","++y
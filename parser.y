{
module Parser where
import Lexer
import IO
}
%name parser
%tokentype {Token}
%error {parseError}

%token
    begin       {BEGIN _}
    end         {END _}
    "("         {LPAREN _}
    ")"         {RPAREN _}
    ";"         {SEMICOLON _}
    real        {REAL $$ _}
    string      {STRING $$ _}
    ident       {IDENT $$ _}
    write       {WRITE _}
    writeln     {WRITELN _}
    read        {READ _}
    "<"         {LESS _}
    ">"         {GRTR _}
    "<="        {LEQ _}
    ">="        {GEQ _}
    "="         {EQL _}
    "!="        {NEQ _}
    ":="        {ASS _}
    "+"         {PLUS _}
    "-"         {MINUS _}
    "*"         {MULT _}
    "/"         {DIV _}
    if          {IF _}
    else        {ELSE _}
    rep         {REP _}
    til         {UNTIL _}
    
%right in
%left "+" "-"
%left "*" "/" 
%left NEG
%%

compoundstatement : begin sequence end  {$2}
                  | begin end {Empty}

sequence : statement ";"                {Seq $1 Empty}
         | statement ";" sequence       {Seq $1 $3}
         
statement : ident ":=" expression        {Ass (fst $1) $3}
          | write "(" expression ")"        {Write $3}
          | read "(" ident ")"           {Read (fst $3)}
          | writeln                         {WriteLn}
          | if comparison compoundstatement {Conditional $2 $3}
          | if comparison compoundstatement
                else compoundstatement      {Branch $2 $3 $5}
          | rep compoundstatement 
                til comparison              {Loop $2 $4}
          
          

comparison : expression "<" expression  {Less $1 $3}
           | expression ">" expression  {Grtr $1 $3}
           | expression "=" expression  {Eql $1 $3}
           | expression "!=" expression {Neq $1 $3}
           | expression ">=" expression {Geq $1 $3}
           | expression "<=" expression {Leq $1 $3}

--This is why using Happy is the correct way of doing this           
expression: expression "+" expression   {Add $1 $3 }
          | expression "-" expression   {Sub $1 $3}
          | expression "*" expression   {Mult $1 $3}
          | expression "/" expression   {Div $1 $3}
          | "(" expression ")"          {$2}
          | "-" expression %prec NEG    {Neg $2}
          | "+" expression %prec NEG    {$2}
          | ident                       {Variable $1}
          | real                        {Const $1}
          | string                      {Str $1}
{
--Called in the event of a parse error.
parseError :: [Token] -> a
parseError (tok:toks) = error ("Parse error at line "++l++ ", column "++c)
    where l = show (line (pos tok))
          c = show (col (pos tok))

--3 nice helper functions for getting the location of an error
line :: AlexPosn -> Int
line (AlexPn abs l c) = l

col :: AlexPosn -> Int
col (AlexPn abs l c) = c 

pos :: Token -> AlexPosn   
pos (LPAREN p) = p
pos (RPAREN p) = p
pos (SEMICOLON p) = p
pos (LESS p) = p
pos (LEQ p) = p
pos (EQL p) = p
pos (NEQ p) = p
pos (GEQ p) = p
pos (GRTR p) = p
pos (STRING s p) = p
pos (REAL x p) = p
pos (BEGIN p) = p
pos (END p) = p
pos (WRITE p) = p
pos (WRITELN p) = p
pos (IDENT s p) = p
pos (PLUS p) = p
pos (MINUS p) = p
pos (MULT p) = p
pos (DIV p) = p
pos (IF p) = p
pos (ELSE p) = p
pos (REP p) = p
pos (UNTIL p) = p
pos (ASS p) = p
pos (READ p) = p
    
--Describes a comparison between two expressions
data Comp = Less Expression Expression
          | Grtr Expression Expression
          | Leq Expression Expression
          | Geq Expression Expression
          | Eql Expression Expression
          | Neq Expression Expression
          | T
          | F
    deriving (Show, Eq)
    
--Describes some unary operator    
data UnOp = UPlus 
          | UMinus
    deriving (Show,Eq)
    
--Describes a mathematical expression
data Expression = Neg Expression 
                | Str String
                | Variable (String,AlexPosn)
                | Const Double
                | Add Expression Expression
                | Sub Expression Expression
                | Mult Expression Expression
                | Div Expression Expression
    deriving (Show,Eq)            

--Wraps a sequence of instructions into a single structure
data Compound = Compound Sequence
    deriving (Show,Eq)

--Describes a sequence of instructions, empty denoting the start of the sequence
data Sequence = Seq Statement Sequence
              | Empty
    deriving (Show,Eq)

--Describes a single instruction
data Statement = Ass String Expression
               | Write Expression
               | WriteLn
               | Read String
               | Conditional Comp Sequence
               | Branch Comp Sequence Sequence
               | Loop Sequence Comp
    deriving (Show, Eq)
  
--Reads a file specified by the first string, parses it, then dumps the 
--resultant parse tree into the file specified by the second
parseFile :: String -> String -> IO()
parseFile inPath outPath = do inFile <- openFile inPath ReadMode
                              outFile <- openFile outPath WriteMode
                              y <- hGetContents inFile
                              hPutStr outFile ((show.parser.lexer) y)
                              hClose outFile
                              hClose inFile

--Replaces a nasty ugly bracketed string with a pretty indented string
nicelyFormat :: String -> String
nicelyFormat cs = nicelyFormat' cs [] 0
 where nicelyFormat' [] acc depth = reverse acc
       nicelyFormat' (c:cs) acc depth
         | c=='(' = nicelyFormat' cs ((replicate (depth+1) ' ')++"\n"++acc) (depth+1)
         | c==')' = nicelyFormat' cs ((replicate (depth-1) ' ')++acc) (depth-1)
         | otherwise = nicelyFormat' cs (c:acc) depth
}
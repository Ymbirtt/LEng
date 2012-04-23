{
module Parser where
import Lexer
import IO
}
%name parser
%tokentype {Token}
%error {parseError}

%token
    begin       {BEGIN}
    end         {END}
    "("         {LPAREN}
    ")"         {RPAREN}
    ";"         {SEMICOLON}
    real        {REAL $$}
    string      {STRING $$}
    ident       {IDENT $$}
    write       {WRITE}
    writeln     {WRITELN}
    read        {READ}
    "<"         {LESS}
    ">"         {GRTR}
    "<="        {LEQ}
    ">="        {GEQ}
    "="         {EQL}
    "!="        {NEQ}
    ":="        {ASS}
    "+"         {PLUS}
    "-"         {MINUS}
    "*"         {MULT}
    "/"         {DIV}
    if          {IF}
    else        {ELSE}
    rep         {REP}
    til         {UNTIL}
%%

compoundstatement : begin sequence end  {$2}
                  | begin end {Empty}

sequence : statement ";"                {Seq $1 Empty}
         | statement ";" sequence       {Seq $1 $3}
         
statement : variable ":=" expression        {Ass $1 $3}
          | write "(" expression ")"        {Write $3}
          | read "(" variable ")"           {Read $3}
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

           
--This was causing addition to bind too tightly.
{-expression : term "+" expression        {Add $1 $3}
           | term "-" expression        {Sub $1 $3}
           | "+" term "+" expression    {Add $2 $4}
           | "-" term "+" expression    {Add (Neg $2) $4}
           | "+" term "-" expression    {Sub $2 $4}
           | "-" term "-" expression    {Sub (Neg $2) $4}
           | term                       {$1}
           | "+" term                   {$2}
           | "-" term                   {Neg $2}
           | string                     {Str $1}-}

expression : expression "+" term        {Add $1 $3}
           | expression "-" term        {Sub $1 $3}
           | "+" expression "+" term    {Add $2 $4}
           | "-" expression "+" term    {Add (Neg $2) $4}
           | "+" expression "-" term    {Sub $2 $4}
           | "-" expression "-" term    {Sub (Neg $2) $4}
           | term                       {$1}
           | "+" term                   {$2}
           | "-" term                   {Neg $2}
           | string                     {Str $1}         
           
term : factor {$1}
     | term "*" factor {Mult $1 $3}
     | term "/" factor {Div $1 $3}

factor : variable {Variable $1}
       | constant {Const $1}
       | "(" expression ")" {$2}

variable : ident {$1}

constant : real {$1}

unop : "+"  {UPlus}
     | "-"  {UMinus}
     
     
     
     
     
{
--Called in the event of a parse error. I write awesome error messages, me
parseError :: [Token] -> a
parseError _ = error "Parse error"

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
                | Variable String
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
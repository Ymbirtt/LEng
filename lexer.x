{
module Lexer where
}
 
%wrapper "basic"
 
$digit = 0-9
$alph = [a-zA-Z]

tokens :-
    ($white|"\\r")+ ;
    \{([^\}]|$white|"\\r")*\}      ;
    "if"            {\s -> IF}
    "else"          {\s -> ELSE}
    "repeat"        {\s -> REP}
    "until"         {\s -> UNTIL}
    "begin"         {\s -> BEGIN}
    "end"           {\s -> END}
    "write"         {\s -> WRITE}
    "writeln"       {\s -> WRITELN}
    "read"          {\s -> READ}
    "("             {\s -> LPAREN}
    ")"             {\s -> RPAREN}
    ";"             {\s -> SEMICOLON}
    "<"             {\s -> LESS}
    "<="            {\s -> LEQ}
    "="             {\s -> EQL}
    "!="            {\s -> NEQ}
    ">="            {\s -> GEQ}
    ">"             {\s -> GRTR}
    '([^']|'')*'    {\s -> STRING ((remquotes.init.tail) s)}
    $digit+\.$digit+(e\-?($digit+))? {\s -> REAL ((read s)::Double)}
    $alph($digit|$alph)* {\s -> IDENT s}
    "+"             {\s -> PLUS}
    "-"             {\s -> MINUS}
    "*"             {\s -> MULT}
    "/"             {\s -> DIV}
    ":="            {\s -> ASS}
 
{

--TODO; remove double quotes from the STRING token
--TODO; turn everything into Rationals for great justice
data Token =
    COMMENT |
    LPAREN |
    RPAREN |
    SEMICOLON |
    LESS |
    LEQ |
    EQL |
    NEQ |
    GEQ |
    GRTR |
    STRING String |
    REAL Double |
    BEGIN |
    END |
    WRITE |
    WRITELN |
    IDENT String |
    PLUS |
    MINUS |
    MULT |
    DIV |
    IF |
    ELSE |
    REP |
    UNTIL |
    ASS |
    READ
	deriving (Eq,Show)
    
--Takes a string, then removes each character that follows a '
--If we know in advance that the input string satisfies the regex ([^']|'')*
--this will be equivalent to replacing each '' with a '   
remquotes :: String -> String
remquotes s = remquotes' [] s
    where remquotes' :: String -> String -> String
          remquotes' acc [] = reverse acc
          remquotes' acc (c:cs) 
            | c=='\'' = remquotes' ('\'':acc) (tail cs)
            | otherwise = remquotes' (c:acc) cs
    
lexer :: String -> [Token]
lexer s = alexScanTokens s
}
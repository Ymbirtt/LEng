{
--IMPORTANT: Lexer.x is ever changed, Lexer.hs must also have its 
--"alexScanTokens" function changed to provide a slightly less nonsensical error
module Lexer where
}
 
%wrapper "posn"
 
$digit = 0-9
$alph = [a-zA-Z]

tokens :-
    ($white|"\\r")+                ;
    \{([^\}]|$white|"\\r")*\}      ;
    "if"            {\p s -> IF p}
    "else"          {\p s -> ELSE p}
    "repeat"        {\p s-> REP p}
    "until"         {\p s -> UNTIL p}
    "begin"         {\p s -> BEGIN p}
    "end"           {\p s -> END p}
    "write"         {\p s -> WRITE p}
    "writeln"       {\p s -> WRITELN p}
    "read"          {\p s -> READ p}
    "("             {\p s -> LPAREN p}
    ")"             {\p s -> RPAREN p}
    ";"             {\p s -> SEMICOLON p}
    "<"             {\p s -> LESS p}
    "<="            {\p s -> LEQ p}
    "="             {\p s -> EQL p}
    "!="            {\p s -> NEQ p}
    ">="            {\p s -> GEQ p}
    ">"             {\p s -> GRTR p}
    '([^']|'')*'    {\p s -> STRING ((remquotes.init.tail) s) p}
    $digit+\.$digit+(e\-?($digit+))? {\p s -> REAL ((read s)::Double) p}
    $alph($digit|$alph)* {\p s -> IDENT (s,p) p}
    "+"             {\p s -> PLUS p}
    "-"             {\p s -> MINUS p}
    "*"             {\p s -> MULT p}
    "/"             {\p s -> DIV p}
    ":="            {\p s -> ASS p}
 
{

--TODO; turn everything into Rationals for great justice
data Token =
    COMMENT |
    LPAREN AlexPosn |
    RPAREN AlexPosn |
    SEMICOLON AlexPosn |
    LESS AlexPosn |
    LEQ AlexPosn |
    EQL AlexPosn |
    NEQ AlexPosn |
    GEQ AlexPosn |
    GRTR AlexPosn |
    STRING String AlexPosn |
    REAL Double AlexPosn |
    BEGIN AlexPosn |
    END AlexPosn |
    WRITE AlexPosn |
    WRITELN AlexPosn |
    IDENT (String,AlexPosn) AlexPosn |
    PLUS AlexPosn |
    MINUS AlexPosn |
    MULT AlexPosn |
    DIV AlexPosn |
    IF AlexPosn |
    ELSE AlexPosn |
    REP AlexPosn |
    UNTIL AlexPosn |
    ASS AlexPosn |
    READ AlexPosn 
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
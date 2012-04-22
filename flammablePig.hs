--The spec very specifically asks for "the assembly code produced by your 
--compiler using the command: antlr3 camle testi.le.
--In this implementation, however, neither antlr3 or camle are used, so invoking
--this command is futile. It was important to me that the replacement command
--was both of the same length as the old command and fitted in with the theme of
--4-legged animals. The incendiary war-pig fits in with these needs perfectly.

module Main where
 import Irt as I
 import Parser as P
 import Lexer as L
 import Cg as C
 import IO
 import System
 
 main :: IO()
 main = do
  args <- getArgs
  (C.compileFile) (head args) ((take (length (head args)-3) (head args))++".ass")

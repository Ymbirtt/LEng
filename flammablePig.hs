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
 
{-
Problem 1:
(*) Find the last element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myLast [1,2,3,4]
4
Prelude> myLast ['x','y','z']
'z'

links: https://wiki.haskell.org/99_Haskell_exercises
       https://wiki.haskell.org/99_questions/1_to_10
-}

module Problem1 where

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [a] = a
myLast (x:xs) = myLast xs

main :: IO ()
main = do
          print $ myLast [1..10]
          print $ myLast ['x','y','z']
--          print $ myLast []   fails to compile
--          print $ last [1,2,3,4]
--          print $ last []     --fails to compile
          return ()

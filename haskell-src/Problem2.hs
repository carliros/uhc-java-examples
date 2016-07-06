{-
Problem 2:
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'

links: https://wiki.haskell.org/99_Haskell_exercises
       https://wiki.haskell.org/99_questions/1_to_10
-}

module Problem2 where

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "single list"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

main :: IO ()
main = do
          print $ myButLast [1..10]
          print $ myButLast [1, 2, 3, 4]
          print $ myButLast ['a'..'z']
          return ()

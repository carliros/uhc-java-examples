module Problems1_10 where
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

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [a] = a
myLast (x:xs) = myLast xs

runExample1 :: IO ()
runExample1 = do
          print $ myLast [1..10]
          print $ myLast ['x','y','z']
--          print $ myLast []   fails to compile
--          print $ last [1,2,3,4]
--          print $ last []     --fails to compile
          return ()

{-
Problem 2:
(*) Find the last but one element of a list.

(Note that the Lisp transcription of this problem is incorrect.)

Example in Haskell:

Prelude> myButLast [1,2,3,4]
3
Prelude> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [x] = error "single list"
myButLast (x:y:[]) = x
myButLast (x:xs) = myButLast xs

runExample2 :: IO ()
runExample2 = do
          print $ myButLast [1..10]
          print $ myButLast [1, 2, 3, 4]
          print $ myButLast ['a'..'z']
          return ()


{-
Problem 3: (*) Find the K'th element of a list. The first element in the list is number 1.
Example:

* (element-at '(a b c d e) 3)
c
Example in Haskell:

Prelude> elementAt [1,2,3] 2
2
Prelude> elementAt "haskell" 5
'e'
-}

elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt xs 0 = error "index starts at 1"
elementAt [] n = error "index out of list"
elementAt (x:xs) n = elementAt xs (n-1)

runExample3 :: IO()
runExample3 = do
  print $ elementAt [1,2,3] 2
  print $ elementAt "haskell" 5
  return ()

main :: IO()
main = do runExample1
          runExample2
          runExample3
          return ()

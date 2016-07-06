module Problem1 where

myLast :: [a] -> a
myLast [] = error "empty list"
myLast [a] = a
myLast (x:xs) = myLast xs

main :: IO ()
main = do print $ myLast [1,2,3,4]
          print $ last [1,2,3,4]
          return ()

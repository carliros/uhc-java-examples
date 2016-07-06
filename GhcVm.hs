module GhcVm where
{-
map :: (a -> b) -> [a] -> [b]
map f (x:xs) = f x : map f xs
map f [] = []

sum :: [Int] -> Int
sum (x:xs) = x + sum xs
sum _ = 0

-}

caf :: [Int]
caf = map (\x -> x + 1) [1..1000]

main :: IO ()
main = do
  print $ sum caf
  return ()

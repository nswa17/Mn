module Main where

f :: Int -> Int
f = \x -> x*2

main :: IO ()
main = do
  putStrLn "Hello World"
  putStrLn "hi"
  print $ fact 5
  print $ take 20 fib

fact n
  | n == 1 = 1
  | otherwise = n * fact (n-1)

fib = 1:1:(zipWith (+) fib $ tail fib)

module Lib (someFunc) where

fib' :: Integer -> Integer -> Integer -> Integer -> [Integer] -> [Integer]
fib' p1 p2 n nMax out
    | n == nMax = (p1 + p2):out
    | otherwise = fib' (p1 + p2) p1 (n + 1) nMax ((p1 + p2):out)

fib :: Integer -> [Integer]
fib 0 = [0]
fib 1 = [1, 0]
fib n = fib' 1 0 2 n [1, 0]
    
someFunc :: IO ()
someFunc = getLine >>= putStrLn . show . reverse . fib . read

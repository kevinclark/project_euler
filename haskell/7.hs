isPrime :: Integer -> Bool
isPrime x
    | x == 2 = True
    | otherwise = all (\y -> x `mod` y /= 0) [2..ceil]
        where ceil = floor $ sqrt $ fromInteger x

primes :: [Integer]
primes = [ x | x <- [2..], isPrime x ]

main = putStr $ show $ last $ take 10001 primes

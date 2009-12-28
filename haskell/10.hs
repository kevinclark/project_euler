-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

-- Find the sum of all the primes below two million.

-- This uses the primes list we created in problem 7

isPrime :: Integer -> Bool
isPrime x
    | x == 2 = True
    | otherwise = all (\y -> x `mod` y /= 0) (2:[3,5..ceil])
        where ceil = floor $ sqrt $ fromInteger x

primes :: [Integer]
primes = [ x | x <- 2 : [3,5..], isPrime x ]

main = putStr $ show $ sum $ takeWhile (< 2000000) primes

-- $ time ./10                       (12-28 18:26)
-- 9.19s user 0.15s system 96% cpu 9.697 total

-- With -O
-- $ time ./10                       (12-28 18:24)
-- 5.67s user 0.09s system 97% cpu 5.902 total


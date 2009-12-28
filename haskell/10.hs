-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

-- Find the sum of all the primes below two million.

-- This uses the primes list we created in problem 7

isPrime :: Integer -> Bool
isPrime x
    | x == 2 = True
    | otherwise = all (\y -> x `mod` y /= 0) [2..ceil]
        where ceil = floor $ sqrt $ fromInteger x

primes :: [Integer]
primes = [ x | x <- [2..], isPrime x ]

main = putStr $ show $ sum $ takeWhile (< 2000000) primes

-- $ time ./10                       (12-28 18:02)
-- 18.04s user 0.27s system 95% cpu 19.230 total

-- With -O
-- $ time ./10                       (12-28 18:01)
-- 8.99s user 0.10s system 98% cpu 9.248 total


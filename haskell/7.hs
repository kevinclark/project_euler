--By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6^(th) prime is 13.

--What is the 10001^(st) prime number?

isPrime :: Integer -> Bool
isPrime x
    | x == 2 = True
    | otherwise = all (\y -> x `mod` y /= 0) (2:[3,5..ceil])
        where ceil = floor $ sqrt $ fromInteger x

primes :: [Integer]
primes = [ x | x <- 2 : [3,5..], isPrime x ]

main = putStr $ show $ last $ take 10001 primes

-- $ time ./7                        (12-28 18:45)
-- 0.19s user 0.01s system 88% cpu 0.226 total

-- With -O
-- $ time ./7                        (12-28 18:46)
-- 0.19s user 0.01s system 96% cpu 0.203 total



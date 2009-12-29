-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

lpf x = lf x 1 (2:[3,5..])
    where lf x' m (p:ps)
            | p > x' = m
            | x' `mod` p == 0 = lf (x' `div` p) p (p:ps)
            | otherwise = lf x' m ps

main = putStr $ show $ lpf 600851475143 

-- $ time ./3                        (12-29 04:46)
-- 6857./3  0.00s user 0.00s system 86% cpu 0.007 total

-- $ time ./3                        (12-29 04:32)
-- 0.01s user 0.00s system 83% cpu 0.016 total


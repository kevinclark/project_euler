{-
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^(2) + b^(2) = c^(2)

For example, 3^(2) + 4^(2) = 9 + 16 = 25 = 5^(2).

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}

triplet = [ (a,b,c) | a <- [1..1000], b <- [1..1000], c <- [1000 - a - b],
                      a^2 + b^2 == c^2,
                      a + b + c == 1000 ]

main = putStr $ show $ a * b * c
    where (a,b,c) = head triplet

-- $ time ./9                        (12-28 17:52)
-- 0.17s user 0.01s system 97% cpu 0.179 total

-- With -O
-- $ time ./9                        (12-28 17:53)
-- 0.03s user 0.00s system 93% cpu 0.040 total


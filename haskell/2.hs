fib 0 = 1
fib 1 = 1
fib x = fib(x - 1) + fib (x - 2)

main = putStr $ show $ sum $ takeWhile (< 4000000) [ fib x | x <- [2,4..]]

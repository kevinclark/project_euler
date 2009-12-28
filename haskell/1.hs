naturalNumbers = [1..]

multiplesOfThreeOrFive = [ x | x <- naturalNumbers, x `mod` 3 == 0 || x `mod` 5 == 0]

main = putStr $ show $ sum $ takeWhile (< 1000) multiplesOfThreeOrFive 

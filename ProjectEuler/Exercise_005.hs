-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main = do 
    print $ [ x | x <- [20,40..250000000], mod x 11 == 0, mod x 12 == 0, mod x 13 == 0, mod x 14 == 0, mod x 15 == 0, mod x 16 == 0, mod x 17 == 0, mod x 18 == 0, mod x 19 == 0, mod x 20 == 0 ]

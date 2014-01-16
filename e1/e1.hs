euler1:: Int
euler1 = sum[ x | x <-[1..999], mod x 3 == 0 || mod x 5 == 0]

main = print euler1
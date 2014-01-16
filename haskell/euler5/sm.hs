

sp = head [(x,a) | x <- [1..], mod x a == 0, a <-[1..20] ]

main = print $ fst(sp)

euler2::Int->Int->Int
euler2 a b
	| a > 4000000 = 0
	| a `mod` 2 == 1 = 0 + (euler2 b c)
	| a `mod` 2 == 0 = a + (euler2 b c)
	where c=a+b

main = print (euler2 1 2)
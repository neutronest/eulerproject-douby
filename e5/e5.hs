getLCM::Integer->Integer->Integer
getLCM a b = div (a * b) (gcd a b)

main::IO()
main = 
	print (foldr1 getLCM [1..20])
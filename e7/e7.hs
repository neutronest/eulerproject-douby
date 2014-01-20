isPrime::Integer->Bool
isPrime n = null [x | x <- [2..(floor(sqrt(fromInteger n)))], mod n x == 0]

main::IO()
main = print $ last primeList
	where primeList = take 10001 [x | x<-[2..], isPrime x ]
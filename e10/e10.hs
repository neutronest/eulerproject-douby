isPrime::Integer->Bool
isPrime n = null [x | x <- [2..(floor(sqrt(fromInteger n)))], mod n x == 0]

main::IO()
main  = print $ sum [ x | x<-[2..2000000], isPrime x]
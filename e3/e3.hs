isPrime::Integer->Bool
isPrime n = null [x | x <- [2..(floor(sqrt(fromInteger n)))], mod n x == 0]

factors::Integer->[Integer]
factors n = [x | x <- [1..n], mod n x == 0]

main::IO()
main = print $ last $ takeWhile isPrime $ factors 600851475143

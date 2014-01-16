
findPP::Integer->Bool
findPP n = (n == (read.reverse.show $ n))

getPPList::[Integer]
getPPList = [ x*y  | x <- [100..999], y <- [100..999], findPP (x*y) == True]

main::IO()
main = print (maximum getPPList)

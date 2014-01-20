digits :: Integer -> [Integer]
digits = map (read . (:[])) . show

getNum :: [Integer]
getNum = [n | n<-[2..999999], n == sum [ x^5 | x<- digits n ] ]

main::IO()
main = print $ sum getNum
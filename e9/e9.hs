
getTuple::Integer->Integer
getTuple n = a*b*c
		where (a,b,c) = head [(a,b,c) | a<-[1..n], b<-[a..n], c<-[b..n], a+b+c == n, a^2+b^2 == c^2]

main::IO()
main = print $ getTuple 1000
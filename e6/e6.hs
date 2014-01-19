getDiff::Integer->Integer
getDiff n = sqrSum - sumSqr
	where sqrSum = (sum [1..n])^2
	      sumSqr = sum [x^2 | x<-[1..n]]

main::IO()
main = print $ getDiff 100
#no 5a
lmbd = 3
dexp(lmbd)

#no 5b
par(mfrow = c(2,2))
set.seed(1)
hist(rexp(10))
set.seed(1)
hist(rexp(100))
set.seed(1)
hist(rexp(1000))
set.seed(1)
hist(rexp(10000))

#no 5c
mean = lmbd
mean
varian = `^`(lmbd, 2)
varian
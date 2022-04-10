#no 3 a
dpois (x = 6, lambda = 4.5)

#no 3 b
peluang = dpois(6, 4.5)
data = data.frame(y = c(peluang), x = c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)

#no 3 d
varian = mean
mean
varian
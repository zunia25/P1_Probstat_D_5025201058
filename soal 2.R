#no 2 a
dbinom(4, 20, .2)

#no 2 b
success <- 0 : 10

plot(success,dbinom(success,size = 4, prob = .2),
     col = "purple",
     type = 'h',
     main = 'Binomial Distribution (n = 4, p = 0.2)',
     ylab = ' probability',
     xlab = 'Successes',
     lwd = 20)

#no 2c
mean = 20 * 0.2
mean

varian = 20 * 0.2 * 3.2
varian
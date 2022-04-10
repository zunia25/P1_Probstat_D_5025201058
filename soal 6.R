#no 6a
par(mfrow = c(2,1))
data = rnorm(n, mean, sd)
z_score = c()
for (d in data){
  z = (d - mean)/sd
  z_score = append(z_score, z)
  
  if (d < mean){
    x1 = x1 + 1
  }else{
    x2 = x2 + 1
  }
}
result = plot(z_score, type='l')
paste("Mean = ", mean)
paste("x1 = ", x1)
paste("x2 = ", x2)

#no 6b
hist(rnorm(n, mean, sd), breaks, main="5025201058_Zunia Aswaroh_D_DNhistogram")

#no 6c
varian = `^`(sd, 2)
varian
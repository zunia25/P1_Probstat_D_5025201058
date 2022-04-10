# P1_Probstat_D_5025201058
Praktikum Modul 1 Probabilitas dan Statistika

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.

- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)

```R
#no 1 a
dgeom(3, .20)
```

  Hasil dari program diatas
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/1a.png)
  
  - mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
  geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  
  ```R
  #no 1b
  mean(rgeom( n = 10000, prob = .20) == 3)
  ```
  
  Hasil dari program di atas 
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/1b.png)
  
  - Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
    > Hasil dari perbandingan antara poin a dan b adalah poin a memiliki hasil yang tetap sedangkan poin b memiliki hasil yang selalu berubah atau random sehingga    hasilnya juga tidak terlalu berbeda jauh.
   
   Bukti poin b yang hasilnya random
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/1c.png)
    
  - Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama

  ```R
  #no 1 d
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(x = 0:10, prob = .20)) %>%
  mutate(failures = ifelse(x == 3,3, "other")) %>%
ggplot(aes(x = factor(x), y = prob, fill = failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
  position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang X = 3 gagal Sebelum Sukses Pertama",
       subtitle = "geometric",
       x = "Peluang gagal sebelum sukses pertama",
       y = "probabilitas")
   ```
   
   Hasil dari program di atas
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/1d.png)
   
   - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.

   ```R
   #no 1 e
   mean = 3 * 0.20
   mean
   varian = 3 * 0.20 * (1 - 0.20)
   varian
   ```
   
   hasil dari program di atas 
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/1e.png)
   
   ## soal 2
   Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
   
   - Peluang terdapat 4 pasien yang sembuh.
   ```R
   dbinom(4, 20, .2)
   ```
   
   Hasil dari program diatas 
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/2a.png)
   
   - Gambarkan grafik histogram berdasarkan kasus tersebut.
   
   ```R
   success <- 0 : 10
   plot(success,dbinom(success,size = 4, prob = .2),
   col = "purple",
   type = 'h',
   main = 'Binomial Distribution (n = 4, p = 0.2)',
   ylab = ' probability',
   xlab = 'Successes',
   lwd = 20)
   ```
   Hasil dari program diatas 
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/2b.png)
   
   - Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
   
   ```R
   mean = 20 * 0.2
   mean
   varian = 20 * 0.2 * 3.2
   varian
   ```
   
   Hasil Dari program diatas 
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/2c.png)
   
   ## soal 3
   Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
   4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
   
   - Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  
  ```R
  #no 3 a
  dpois (x = 6, lambda = 4.5)
  ```
  
  Hasil dari program diatas
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/3a.png)
  
  - simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
    setahun (n = 365)
    
   ```R
   #no 3 b
   peluang = dpois(6, 4.5)
   data = data.frame(y = c(peluang), x = c(1:365))
   barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)
   ```
   
   Hasil dari program diatas
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/3b.png)

   - dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
     > Dari data dan perhitungan  tersebut dapat dikatakan bahwa distribusi poisson pada kelahiran bayi dari hari pertama hingga terakhir adalah sama
   
   - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
    
    ```R
    #no 3 d
    varian = mean
    mean
    varian
    ```
    
   Hasil dari program diatas 
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/3d.png)
   
   
   ## soal 4
   Diketahui nilai x = 2 dan v = 10. Tentukan
   
   - Fungsi Probabilitas dari Distribusi Chi-Square.
   
   ```R
   #no 4a
   dchisq(2, 10)
   ```
   
   Hasil dari program diatas
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/4a.png)
   
   - Histogram dari Distribusi Chi-Square dengan 100 data random\
   
   ```R
   #no 4b
   hist(rchisq(100, 10))
   ```
   
   Hasil dari program diatas
   
   ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/4b.png)

  - Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.

  ```R
  #no 4c
  mean = 10
  mean
  varian = 2 * 10
  varian
  ```
  
  Hasil dari program diatas
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/4c.png)
  
  ## soal 5
  Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
   
  -  Fungsi Probabilitas dari Distribusi Exponensial
  ```R
  #no 5a
  lmbd = 3
  dexp(lmbd)
  ```
  
  Hasil dari program diatas 
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/5a.png)

  - Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
  ```R
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
  ```
  
  Hasil dari program diatas 
  
  ![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/5b.png)
  
  - Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
Petunjuk:
● Gunakan set.seed(1)
● Gunakan fungsi bawaan R

```R
#no 5c
mean = lmbd
mean
varian = `^`(lmbd, 2)
varian
```

Hasil dari program diatas 

![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/5c.png)

## soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

- Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan :
X1 = Dibawah rata-rata
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6

```R
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
```

Hasil dari program diatas 

![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/6a.png)

- Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram

```R
#no 6b
hist(rnorm(n, mean, sd), breaks, main="5025201058_Zunia Aswaroh_D_DNhistogram")
```

hasil dari program diatas

![alt text](https://github.com/zunia25/P1_Probstat_D_5025201058/blob/main/File_Praktikum_Probstat/6b.png)

- Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

```R
#no 6c
varian = `^`(sd, 2)
varian
```

Hasil dari program diatas 

![alt text]()



  
     
     
     
    

   



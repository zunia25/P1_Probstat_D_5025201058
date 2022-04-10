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
     
     
     
    

   



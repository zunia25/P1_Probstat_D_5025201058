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
  
  ![alt text] (



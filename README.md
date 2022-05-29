# P2_Probstat_F_5025201028

## Soal 1

Langkah pertama lakukan penginstalan seperti berikut
```C
install.packages("BSDA")
library(BSDA)
```

### A1
mencari standart deviasi dari data selisih pasangan pengamatan tabel pada soal

* Data sebelum dan sesudah melakukan aktivitas
```C
orang.ke = c(seq(1:9))
sebelum = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
sesudah = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
data = data.frame(orang.ke,sebelum, sesudah)
n = 9
```

* Standart Deviasi
```C
selisih = data$sesudah - data$sebelum
standardev = sd(selisih)
standardev
```

### B1
mencari nilai t(p-value) dengan menggunakan rumus berikut
```c
mu = 0
```

> langkah 1 : cari rata selisihnya terlebih dahulu
```C
xbar = mean(selisih)
xbar
```

> langkah 2 : cari nilai t
```C
t = ((xbar - mu) / (standardev/sqrt(n)))
t
```

> langkah 3 : cari p-value
```C
pvalue = 2 * pt(-abs(t), df=n-1)
pvalue
```

Hasil Soal 1, A dan B

![image](https://user-images.githubusercontent.com/90663373/170871687-795cf972-26bc-4a00-9046-b523a58c386b.png)

### C1
Menentukan apakah terdapat pengaruh signifikan secara statitiska dalam hal kadar oksigen, sebelum dan sesudah melakukan aktivitas A jika diketahui tingkat signifikasi 𝛼 = 5% serta H0: "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴"

```C
t.test(x=data$sesudah, 
       y=data$sebelum,
       alternative = "two.sided", 
       mu = 0, 
       paired = TRUE, 
       var.equal = TRUE, 
       conf.level = 0.95)
```

Hasil Soal 1, C

![image](https://user-images.githubusercontent.com/90663373/170871864-65f8a72b-dee6-4f3d-b591-13d883ed5dcf.png)

## Soal 2
## Soal 3

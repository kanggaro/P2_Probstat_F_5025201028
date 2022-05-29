# P2_Probstat_F_5025201028

M Abror Al Qushoyyi | 5025201028 | Probstat F

## Soal 1

Langkah pertama lakukan penginstalan seperti berikut
```C
install.packages("BSDA")
library(BSDA)
```

#### A1
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

#### B1
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

#### C1
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
Diketahui jumlah sample 100, rata-rata 23500, dan standart deviasi 3900
klaim : mobil dikemudikan rata-rata lebih dari 20000 kilometer pertahun

#### A2
berdasarkan uji z :
![image](https://user-images.githubusercontent.com/90663373/170877149-34c4cf52-d13a-495a-ade2-2d17f5baff87.png)
didapatkan :
![image](https://user-images.githubusercontent.com/90663373/170877166-0c950cbd-c7b6-401b-8bb7-f87bcfc5b893.png)

dari hasil tersebut, p-value kurang dari 0.005, shingga H0(rata-rata kurang dari sama dengan 20000 km)ditolak

#### B2
maksud yang dihasilkan dari output diatas z hitung adalah 60.256, Dari nilai z tersebut didapat p value < 2.2*10^-16. Dengan persentase confidence 95% adalah 22858.51

#### C2
sehingga didapatkan kesimpulan yg didapatkan karena P-Value signifikan(0.005), maka H0 ditolak. Maka klaim rata-rata mobil yang dikenudikan kurang dari 20000 km per tahun adalah benar.

## Soal 3
#### A3
H0 dan H1 dilakukan perhitungan 
> H0 sebagai berikut
![image](https://user-images.githubusercontent.com/90663373/170873861-dc4b8428-9c4e-4e5c-8342-e39638a29a66.png)
> H1 sebagai berikut
![image](https://user-images.githubusercontent.com/90663373/170873900-75ee0298-4229-406a-8a54-2133aa7f090c.png)

#### B3
menghitung sampel statistik penghitungan dengan cara sperti berikut
```C
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
![image](https://user-images.githubusercontent.com/90663373/170873973-1cd16c0c-a5e4-45e1-9858-5d1854ccf286.png)

#### C3
Melakukan uji statistik dengan (df = 2)
sebelumnya, install terlebih dahulu library mosaic 
```C
install.packages("mosaic")
library(mosaic)
```
```C
plotDist(dist='t', df=2, col="blue")
```
![image](https://user-images.githubusercontent.com/90663373/170874075-7bf509a0-e1b4-4bf5-9800-812c63221778.png)

#### D3
melakukan pencarian nilai kritikal menggunakan `qchisq` dengan `df=2` menyesuaikan dengan soal sebelumnya
![image](https://user-images.githubusercontent.com/90663373/170874182-69d341b9-ce05-4da5-bce3-723cb1eae755.png)

#### E3

Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian. Aksinya adalah : ({a}_{a∈A}) Kemungkinan konsekuensi : ({c}_{c∈C}) (tergantung pada keadaan dan tindakan) Maka keputusan dapat dibuat dengan t.test

#### F3
didapatkan kesimpulan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal

## Soal 4

## Soal 5
#### A5
Plot sederhana

![image](https://user-images.githubusercontent.com/90663373/170877818-22b5b760-c6f2-48c3-995f-54e5f72720d4.png)


#### B5
Uji Anova dua arah

![image](https://user-images.githubusercontent.com/90663373/170877547-249d752a-10fc-4495-8dba-38e9a75ec146.png)

#### C5
mean dan standart deviasi keluaran cahaya untuk setiap perlakuan didapatkan sebagai berikut

![image](https://user-images.githubusercontent.com/90663373/170877638-62b6a1d5-852f-459a-9d74-d08f497ba4a8.png)

#### D5
Uji Tukey

![image](https://user-images.githubusercontent.com/90663373/170877656-c328098a-805c-49a6-8b06-7839bfb0b656.png)

#### E5
compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan Uji Tukey

![image](https://user-images.githubusercontent.com/90663373/170877754-f0bfdd0b-0c29-45a7-ae4a-6675a6c76804.png)




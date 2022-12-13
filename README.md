# Modul2_Probstat_5025211023
Praktikum Probabilitas dan Statistika Modul 2

## Identitas
| Nama                | NRP        | Kelas     |
| ---                 | ---        | ----------|
| Wan Sabrina Mayzura | 5025211023 |Probstat A |

## No 1
>**Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴** <br />

![image](https://user-images.githubusercontent.com/90106865/206866294-54637825-a248-473a-9f1c-6afa35d4ef65.png)<br />
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
* **Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas** <br />
    Menggunakan fungsi ```c()``` untuk membuat vector (array satu dimensi) untuk data X dan Y. <br />
    
    ```R
    X = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
    Y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
    ```
    Mencari selisih dari data X dan Y. Lalu menggunakan fungsi ```sd()``` untuk mencari standar deviasi  dari selisih data
    ```R
    selisih = (X - Y)
    sd(selisih)
    ```
    Setelah dijalankan didapat ```6.359595```
    
    ![image](https://user-images.githubusercontent.com/90106865/206868228-d3872c79-49f0-4705-9879-ed7e9330b0b4.png)

* **Carilah nilai t (p-value)** <br />
    Untuk mencari nilai t, digunakan fungsi ```t.test``` dan ```paired``` untuk membandingkan rata-rata antara dua kelompok sampel yang terkait, yaitu X dan Y.
    ```R
    t.test(Y, X, paired = TRUE)
    ```
    Setelah dijalankan didapat nilai ```t = 7.6525 ``` dan ```p-value = 6.003e-05```
    
    ![image](https://user-images.githubusercontent.com/90106865/206868699-08b3195d-b362-4612-b27d-0f28d115bb03.png)

* **Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴”** <br />
    Pada poin B didapat nilai probabilitas uji t p-value sebesar ```6.003e-05``` yang dimana jika dibandingkan dengan significant level, nilai p-value lebih kecil (p-value = 0.00006003) > (𝛼 = 0.05). Oleh karena itu hipotesis nol (H0) ditolak dan hipotesis alternatif diterima. Sehingga kesimpulan yang diambil berbanding terbalik dengan hipotesa nol, yaitu terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, baik sebelum dan sesudah melakukan aktivitas A.

## No 2
>**(Hipotesa 1 sampel) Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).** <br />
```R
H0 : µ ≤ 20.000 km
H1 : µ > 20.000 km
```

* **Apakah Anda setuju dengan klaim tersebut?** <br />
    Setuju, karena berdasarkan perhitungan (dengan tidak menggunakan uji statistik) memungkinkan untuk didapatkan rata rata 23.500. Serta akan dibuktikan lebih lanjut dengan melakukan uji statistik dibawah.
* **Jelaskan maksud dari output yang dihasilkan!** <br />
    Pada poin ini dilakukan perhitungan uji Z satu sample (karena n > 100 maka menggunakan uji Z) dengan menggunakan fungsi ```zsum.test()```. Serta diperlukan package library BSDA untuk menggunakan fungsi tersebut. 
    ```R
    install.packages("BSDA")
    library(BSDA)

    xbar = 23500
    sigma = 3900
    n = 100
    mu = 20000
    zsum.test(xbar, sigma, n, alternative = "greater", mu=20000)
    ```
    Setelah dijalankan: 
    
    ![image](https://user-images.githubusercontent.com/90106865/207161273-7dcda6fc-eff6-4eb3-8e78-a4903c309e4e.png)

    Didapat interval rata-rata jarak tempuh mobil pertahunnya adalah lebih dari ```22.858,51```. Sehingga dapat dibuktikan bahwa rata-rata jarak tempuh mobil pertahun lebih dari 20.000.
    
* **Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!** <br />
    Pada poin B didapatkan hasil uji dimana rata-rata jarak tempuh mobil pertahun lebih dari 20.000 dan didapat pula nilai ```p-value = 2.2e-16``` lebih kecil dari significant level ```𝛼 = 0.05```. Oleh karena itu hipotesis nol ditolak dan hipotesis alternatif diterima dan dapat disimpulkan bahwa rata-rata jarak tempuh mobil lebih dari 20.000km/tahun.

## No 3
>**(Hipotesa 2 sampel) Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.** <br />

![image](https://user-images.githubusercontent.com/90106865/206866754-294cf7ff-3b2a-452a-b3c7-1dfee1fef2bc.png)<br />
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya **(α= 0.05)?** Buatlah :
* **H0 dan H1**

    ```R
    H0 : µ1 = µ2 (rata-rata saham Bandung sama dengan Bali)
    H0 : µ1 ≠ µ2 (rata-rata saham Bandung tidak sama dengan Bali)
    ```
* **Hitung Sampel Statistik** <br />
    Dilakukan perhitungan dengan menggunakan fungsi ```tsum.test()```
    ```R
    xbar1 = 3.64
    s1 = 1.67
    n1 = 19
    xbar2 = 2.79
    s2 = 1.32
    n2 = 27

    tsum.test(xbar1, s1, n1, xbar2, s2, n2, alternative = "greater", var.equal = TRUE)
    ```
    Setelah dijalankan: 
    
    ![image](https://user-images.githubusercontent.com/90106865/207163897-38c078fa-1110-4e47-be25-abebf8c03a31.png)
    
    didapat nilai ```t = 1.9267```
    
* **Lakukan Uji Statistik (df = 2)** <br />
    Digunakan fungsi ```plotDist()``` untuk membuat visualisasi uji statistik dengan degree of freedom sebesar 2.
    ```R
    df = 2
    plotDist(dist = 't', df, col = "pink")
    ```
    ![image](https://user-images.githubusercontent.com/90106865/207165219-6f1257dd-9c4a-494d-9b07-1e51c9ef7ec7.png)
* **Nilai Kritikal** <br />
    Digunakan fungsi ```qchisq()``` dengan ```df = 2```
    ```R
    df = 2
    qchisq(p = 0.05, df, lower.tail = FALSE)
    ```
    ![image](https://user-images.githubusercontent.com/90106865/207166573-656ab7ce-96dd-4b8b-8d84-b3df6a8952eb.png)
    
    didapat nilai kritikal ```5.991465```
    
* **Keputusan** <br />
    Pada poin B didapat ```p-value = 0.03024``` dan lebih kecil dari 𝛼 = 0.05. Oleh karena itu hipotesis nol ditolak dan hipotesis alternatif diterima.
    
* **Kesimpulan** <br />
    Sehingga dapat disimpulkan bahwa terdapat perbedaan antara rata-rata saham di Bandung dan rata-rata saham di Bali.
    
## No 4
>**(Anova satu arah) Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika :** <br />
Diketahui dataset https://intip.in/datasetprobstat1 <br />
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama <br />

Maka Kerjakan atau Carilah:<br />
* **Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.** <br />
    Digunakan fungsi ```read.table``` untuk memasukkan data set yang telah diberikan di soal.
    ```R
    dataset = read.table("datasetprobstat4.txt", h = T)
    attach(dataset)
    ```
    Lalu dilakukan set group atau labelling dan membagi tiap value menjadi 3 bagian sesuai label yang telah dibuat
    ```R
    dataset$Group = as.factor(dataset$Group)
    dataset$Group = factor(dataset$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))
    
    class(dataset$Group)
    
    Group1 = subset(dataset, Group == "Kucing Oren")
    Group2 = subset(dataset, Group == "Kucing Hitam")
    Group3 = subset(dataset, Group == "Kucing Putih")
    ```
    Kemudian dipanggil fungsi ```qqnorm()``` untuk membuat plot dan ```qqline()``` untuk membuat garis pada plot.
    ```R
    qqnorm(Group1$Length)
    qqline(Group1$Length)
    ```
    
    ![image](https://user-images.githubusercontent.com/90106865/207175117-221f43f3-d868-444e-8093-2d98787d45bb.png)

    ```R
    qqnorm(Group2$Length)
    qqline(Group2$Length)
    ```
    
    ![image](https://user-images.githubusercontent.com/90106865/207175422-dac23c95-8f03-4211-920c-5813b5de90ac.png)

    
    ```R
    qqnorm(Group3$Length)
    qqline(Group3$Length)
    ```
    
    ![image](https://user-images.githubusercontent.com/90106865/207175467-74e5678e-907b-4ade-869b-b3881abad487.png)

    
* **Carilah atau periksalah Homogeneity of variances nya, Berapa nilai p yang didapatkan?, Apa hipotesis dan kesimpulan yang dapat diambil?** <br />
    Untuk memeriksa homogeneity of variances digunakan fungsi ```bartlett.test()``` serta menggunakan data set yang telah diattach pada poin A
    ```R
    bartlett.test(Length ~ Group, data = dataset)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207177970-211ab1dd-7b67-4af1-b54c-e061d6b30bcb.png)

    didapat ```p-value = 0.8054``` yang nilainya lebih besar dari 𝛼 = 0.05 sehingga dibuktikan bahwa variance sama.
    
* **Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.** <br />
    Digunakan fungsi ```lm()``` dan ```anova()``` untuk membuat model linier dan melakukan uji anova
    
    ```R
    m1 = lm(Length ~ Group, data = dataset)
    anova(m1)
    ```
    Didapatkan tabel anova sebagai berikut:
    
    ![image](https://user-images.githubusercontent.com/90106865/207179614-385f12fe-fa80-4ac1-a7f6-f494349f3619.png)

* **Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?** <br />
    Pada poin C didapat ```p-value = 0.0013``` dan nilainya lebih kecil dari 𝛼 = 0.05. Sehingga hipotesis nol ditolak dan dapat disimpulkan bahwa terdapat perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama.
    
* **Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.** <br />
    Digunakan fungsi ```TukeyHSD()``` untuk melakukan verifikasi pada jawaban model 1 dengan Post-hoc test Tukey HSD.
    ```R
    TukeyHSD(aov(m1))
    ```
    
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207182426-4dd14bf0-3307-44ee-976a-4b402509887a.png)

    Dari hasil uji Tukey dapat dilihat jika nilai p-value lebih besar dari 𝛼 = 0.05 maka panjangnya sama sedangkan p-value lebih kecil dari 𝛼 = 0.05 akan terdapat perbedaan panjang diantara tiap kucing pada satu group. 
    
* **Visualisasikan data dengan ggplot2.** <br />
    Digunakan fungsi ```ggplot()``` untuk membuat visualisasi data
    ```R
    install.packages("ggplot2")
    library("ggplot2")

    ggplot(dataset, aes(x = Group, y = Length)) + geom_boxplot(fill= "pink", color = c("#FFA500", "#000000", "#FFFFFF")) + scale_x_discrete() + xlab("Group") + ylab("Length (cm)")
    ```
    
    ![image](https://user-images.githubusercontent.com/90106865/207184641-6475d134-2259-456b-bdcf-978815abdf5d.png)

## No 5
>**(Anova dua arah) Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: [Data Hasil Eksperimen](https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view). Dengan data tersebut:** <br />
    
* **Buatlah plot sederhana untuk visualisasi data** <br />
    Pada soal ini diperlukan untuk menginstall dan menggunakan library-library dibawah ini:
    ```R
    install.packages("multcompView")
    library(readr)
    library(ggplot2)
    library(multcompView)
    library(dplyr)
    ```
    Digunakan ```read_csv()``` dan ```head()``` untuk membaca dan memasukkan file csv ke dataset dan melakukan observasi pada dataset menggunakan fungsi ```STR()```
    ```R
    data <- read_csv("GTL.csv")
    head(data)

    str(data)
    ```
    
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207190988-d72d7775-793e-4718-aa88-63683afb1a05.png)

    Lalu menggunakan fungsi ```qplot()``` untuk membuat visualisasi plot sederhana
    ```R
    qplot(x = Temp, y = Light, geom = "point", data = data) + facet_grid(.~Glass, labeller = label_both)
    ```
    
    ![image](https://user-images.githubusercontent.com/90106865/207197762-8718e964-3481-471e-ae20-32ae229dd30a.png)
    
* **Lakukan uji ANOVA dua arah** <br />
    Untuk melakukan uji ANOVA dua arah, variabel dibuat sebagai factor dengan menggunakan ```as.factor()```
    ```R
    data$Glass = as.factor(data$Glass)
    data$Temp_Factor = as.factor(data$Temp)
    str(data)
    ```
    Lalu menggunakan fungsi ```summary(aov())``` untuk melakukan analisis varians atau ANOVA
    ```R
    anova = aov(Light ~ Glass*Temp_Factor, data = data)
    summary(anova)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207198422-e712b38a-a771-4b4a-b01e-2ab5ad4b56f0.png)
    
* **Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)** <br />
    Digunakan fungsi ```group_by()``` dan ```summarise()``` untuk mendapatkan summary data sesuai dengan mean dan standar deviasinya
    ```R
    data_summary = group_by(data, Glass, Temp) %>%
      summarise(mean = mean(Light), sd = sd(Light)) %>%
      arrange(desc(mean))
    print(data_summary)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207199358-aa7ff921-52b2-44aa-9d5a-68ddff9e45e0.png)

* **Lakukan uji Tukey** <br />
    Digunakan fungsi ```TukeyHSD()``` untuk melakukan uji Tukey
    ```R
    tukeyHSD = TukeyHSD(anova)
    print(tukeyHSD)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207199974-a8c9ccc7-5b72-4a63-b37b-bf5794f9d88e.png)

* **Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey** <br />
    Digunakan fungsi ```multcompLetterS4``` untuk membuat compact letter display
    ```R
    tukeycld = multcompLetters4(anova, tukeyHSD)
    print(tukeycld)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207200908-3fb5d800-a42d-47b4-bb5e-a6b2ea4e122d.png)

    Lalu menambahkan mean dan standar deviasi ke tabel compact letter display
    ```R
    cld = as.data.frame.list(tukeycld$`Glass:Temp_Factor`)
    data_summary$Tukey = cld$Letters
    print(data_summary)
    ```
    Setelah dijalankan:
    
    ![image](https://user-images.githubusercontent.com/90106865/207201221-fdabdd8c-74fc-44d6-ab00-b3667e9c28c6.png)

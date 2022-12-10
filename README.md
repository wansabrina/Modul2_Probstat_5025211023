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
    Mencari selisih dari data X dan Y. Lalu menggunakan fungsi ```sd()``` untuk mencari standar deviasi  dari selisih data.
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
    Setelah dijalankan didapat ```16.22222 ```
    
    ![image](https://user-images.githubusercontent.com/90106865/206868699-08b3195d-b362-4612-b27d-0f28d115bb03.png)

* **Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴”** <br />
    ISI INI

## No 2
>**Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).** <br />
* **Apakah Anda setuju dengan klaim tersebut?** <br />
    ISI INI
* **Jelaskan maksud dari output yang dihasilkan!** <br />
    tanya pake T atau Z
* **Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!** <br />

## No 3
>**Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.** <br />

![image](https://user-images.githubusercontent.com/90106865/206866754-294cf7ff-3b2a-452a-b3c7-1dfee1fef2bc.png)<br />
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya **(α= 0.05)?** Buatlah :
* **H0 dan H1** <br />
* **Hitung Sampel Statistik** <br />
* **Lakukan Uji Statistik (df =2)** <br />
* **Nilai Kritikal** <br />
* **Keputusan** <br />
* **Kesimpulan** <br />

## No 4
>**Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika :** <br />
Diketahui dataset https://intip.in/datasetprobstat1 <br />
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama <br />

Maka Kerjakan atau Carilah:<br />
* **Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1, grup 2, grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.** <br />
* **Carilah atau periksalah Homogeneity of variances nya, Berapa nilai p yang didapatkan?, Apa hipotesis dan kesimpulan yang dapat diambil?** <br />
* **Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.** <br />
* **Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?** <br />
* **Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.** <br />
* **Visualisasikan data dengan ggplot2.** <br />

## No 5
>**Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: [Data Hasil Eksperimen](https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view). Dengan data tersebut:** <br />
* **Buatlah plot sederhana untuk visualisasi data** <br />
* **Lakukan uji ANOVA dua arah** <br />
* **Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)** <br />
* **Lakukan uji Tukey** <br />
* **Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey** <br />

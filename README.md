# floryn_shop

**GitHub: https://github.com/04Delya/floryn-shop-mobile.git**

**Floryn Shop** adalah sebuah platform *e-commerce* yang menjual berbagai macam bunga dan tanaman hias. Proyek ini dibangun menggunakan *framework* Flutter untuk memberikan pengalaman belanja *online* yang optimal dan dirancang untuk memenuhi kebutuhan pelanggan secara efektif.

## TUGAS 7

- Jelaskan apa yang dimaksud dengan *stateless widget* dan *stateful widget*, dan jelaskan perbedaan dari keduanya.
    *Stateless widget* adalah *widget* yang bersifat statis, di mana seluruh konfigurasi di dalamnya sudah diinisiasi sejak awal melalui proses *constructor* dan *build*, sehingga tampilannya tidak akan berubah selama aplikasi berjalan, baik karena interaksi pengguna maupun perubahan variabel dan nilai. Sebaliknya, *stateful widget* memiliki sifat dinamis yang memungkinkan tampilan diperbarui kapan pun dibutuhkan melalui proses serupa, yaitu *constructor* untuk inisiasi awal, dan *build* untuk membangun UI berdasarkan kondisi *state*. Perbedaan ini menjadikan *stateless widget* cocok untuk UI yang tetap, sementara *stateful widget* lebih sesuai untuk elemen interaktif yang memerlukan pembaruan secara *real-time*.

- Sebutkan *widget* apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
    1) ***MaterialApp*** berfungsi sebagai *Widget* utama aplikasi yang mengatur tema, *title*, dan *routing* aplikasi.
    2) ***Scaffold*** berfungsi sebagai struktur dasar halaman yang memberikan kerangka untuk*AppBar*, *Body*, dan elemen-elemen lainnya.
    3) ***AppBar*** berfungsi untuk menampilkan bagian atas halaman yang berfungsi sebagai *bar* judul aplikasi.
    4) ***Padding*** berfungsi untuk memberikan jarak di sekitar *widget*, jadi dalam hal ini *padding* menyediakan jarak di sekitar konten halaman
    5) ***Column*** berfungsi untuk menyusun *child widget* secara vertikal.
    6) ***Row*** berfungsi untuk menyusun *child widget* secara horizontal.Dalam proyek Floryn Shop ini, digunakan untuk menampilkan *InfoCard*.
    7) ***SizedBox*** berfungsi untuk memberikan jarak vertikal atau horizontal di antara *widget*, misalnya antara teks dan ikon.
    8) ***Card*** berfungsi sebagai *widget* dengan bayangan yang menampilkan informasi di dalam sebuah *frame*, seperti pada *widget* *InfoCard*.
    9) ***BoxDecoration*** digunakan untuk mempercantik tampilan *Container* dengan latar belakang, border, dan bayangan. Pada proyek Floryn Shop ini, *BoxDecoration* diterapkan di dalam *Container* pada *ItemCard* untuk memberikan efek visual tambahan, seperti gradasi warna.
    10) ***GridView.count*** berfungsi sebagai *layout grid* yang menyusun *widget* dalam bentuk kolom dan baris tertentu. Dalam proyek Floryn Shop ini, digunakan untuk menampilkan *ItemCard*.
    11) ***Center*** digunakan untuk memposisikan *child widget* di tengah-tengah layar atau kontainer.
    12) ***Text*** berfungsi untuk menampilkan teks, digunakan untuk judul aplikasi, nama, NPM, kelas, dan juga teks tombol.
    13) ***Icon*** berfungsi untuk menampilkan ikon yang mewakili setiap fungsi, seperti ikon produk, tambah produk, dan logout.
    14) ***Material*** berfungsi untuk menyediakan tampilan *material design* untuk *child widget*, di proyek Floryn Shop ini untuk memberikan efek material pada *card*.
    15) ***InkWell*** berfungsi untuk memberikan efek klik pada *widget*, di sini digunakan untuk *ItemCard*.
    16) ***SnackBar*** berfungsi untuk menampilkan pesan singkat di bagian bawah layar setelah tindakan dilakukan, pada proyek ini contohnya ketika tombol ditekan.

- Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
    Fungsi `setState()` di Flutter digunakan untuk memberi tahu *framework* bahwa ada perubahan pada status *widget* yang memerlukan pembaruan tampilan. Saat dipanggil, `setState()` akan membuat ulang atau *rebuild* pada *widget* yang terkait sehingga perubahan tersebut terlihat di UI. Misalnya, jika variabel seperti `searching` atau `resBody` mengalami perubahan dan perlu ditampilkan ulang di layar, perubahan tersebut perlu dibungkus dalam `setState()`. Variabel yang tidak langsung memengaruhi tampilan, seperti `user`, tidak memerlukan setState(). Dalam proyek Floryn Shop ini, variabel seperti `items` dalam `MyHomePage`, atau `title` dan `content` dalam *InfoCard*, bersifat statis dan tidak perlu diperbarui. Namun, jika dibuat dinamis (misalnya, `items` bertambah atau `title` dan `content` otomatis diperbarui), `setState()` perlu digunakan untuk memperbarui UI sesuai perubahan. Penggunaan `setState()` yang selektif dianjurkan untuk menjaga performa aplikasi tetap optimal.

- Jelaskan perbedaan antara `const` dengan `final`.
    Dalam Dart, `const` dan `final` digunakan untuk membuat variabel yang nilainya tidak bisa diubah (*immutable*).

    - `const` digunakan ketika nilai yang sudah ditetapkan sejak awal dan tidak akan berubah. Contohnya, `const pi = 3.14;`. Nilai ini sudah diketahui sebelum program berjalan dan bersifat tetap.
    - `final` digunakan untuk nilai yang hanya bisa diatur satu kali, namun dapat ditentukan saat program berjalan (*runtime*).  Misalnya, `final waktu = DateTime.now();`. Nilainya hanya ditetapkan satu kali, tetapi baru diperoleh ketika program dijalankan.

    Jadi, kita dapat menggunakan `const` untuk nilai yang sudah pasti sejak awal, dan `final` jika nilainya diperoleh saat program berjalan, tetapi tetap tidak dapat diubah setelahnya.

- Jelaskan bagaimana cara kamu mengimplementasikan *checklist-checklist* di atas.
    1. 


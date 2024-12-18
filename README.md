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

    1. Membuat sebuah program Flutter baru dengan tema *E-Commerce* yang sesuai dengan tugas-tugas sebelumnya.
        - Memulai Proyek Flutter Baru untuk Floryn Shop
            Pertama, saya membuka Terminal (untuk macOS) dan membuat direktori baru untuk menyimpan proyek Flutter bernama `floryn_shop`. Saya menavigasi ke direktori tersebut, lalu membuat proyek baru menggunakan perintah `flutter create floryn_shop` dan `cd floryn_shop`. Setelah proyek berhasil dibuat, saya memastikan proyek dapat berjalan dengan baik dengan menjalankan perintah `flutter run`. Dengan perintah `flutter run` memungkinkan saya untuk memverifikasi bahwa proyek Flutter telah dibuat dan berjalan tanpa masalah. Jika berhasil, proyek akan berjalan dengan tampilan *default* Flutter.
        - Mengaktifkan Dukungan Web untuk Proyek
            Untuk menjalankan aplikasi Flutter langsung di Google Chrome, pilih `opsi [2] Chrome (chrome)` saat *prompt* muncul dan cukup mengetikkan 2 lalu tekan Enter. Namun, jika kita ingin menjalankan proyek di Chrome tanpa *prompt* pemilihan perangkat, jalankan perintah `flutter run -d chrome`. Perintah tersebut akan langsung mengarahkan aplikasi ke Chrome tanpa meminta pilihan perangkat.
        - Merapikan Struktur Proyek dengan Memindahkan Kode ke `menu.dart`
            Untuk merapikan struktur proyek, saya membuat *file* baru bernama `menu.dart` di dalam direktori `lib`. File ini berfungsi sebagai tempat baru untuk beberapa kode dari `main.dart`, agar struktur proyek lebih rapi dan mudah dipahami. Pada baris pertama `menu.dart`, saya menambahkan `import 'package:flutter/material.dart';` untuk memungkinkan *file* ini menggunakan komponen dan *widget* dari Flutter, seperti *Scaffold*, *AppBar*, dan lainnya. Selanjutnya, saya membuka `main.dart` dan memindahkan (cut) kode mulai dari baris ke-39 hingga akhir, yang berisi *class* `MyHomePage` dan `_MyHomePageState`, ke `menu.dart`. Dengan memisahkan *class* ini, struktur proyek menjadi lebih modular. Kemudian, di `main.dart`, saya menambahkan `import 'package:floryn_shop/menu.dart';` di bagian atas *file* agar `main.dart` dapat mengenali *class* yang sudah dipindahkan ke `menu.dart`. Terakhir, saya menjalankan proyek dari Terminal untuk memastikan aplikasi berjalan dengan baik dan semua perubahan telah diterapkan tanpa *error*.
        - Mengubah Tema Warna Aplikasi
            Saya mengubah tema aplikasi agar sesuai dengan identitas Floryn Shop. Di `main.dart`, saya mengatur skema warna aplikasi dengan menggunakan `ColorScheme.fromSwatch` yang saya ubah menjadi pink:
            ```dart
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.pink,
            ).copyWith(secondary: Colors.pink[200]),
            ```
        - Mengubah *Class* `MyHomePage` Menjadi *Stateless*
            Di dalam berkas `main.dart`, saya menghapus `const MyHomePage(title: 'Flutter Demo Home Page')` dan menggantinya dengan `MyHomePage()`, sekaligus menghilangkan kata kunci `const`. Selain itu, saya mengubah *class* `MyHomePage` dari `StatefulWidget` menjadi `StatelessWidget` di `menu.dart`, dengan membersihkan semua kode yang berkaitan dengan *state management*.
        - Membuat *InfoCard* untuk Menampilkan Informasi Pengguna
            Saya membuat *widget InfoCard* di `menu.dart` untuk menampilkan informasi pengguna seperti `NPM`, `nama`, dan `kelas` secara horizontal. *InfoCard* adalah *widget* tipe `StatelessWidget` yang menerima dua parameter, yaitu `title` dan `content`, yang akan ditampilkan di dalam *card*. *Card* ini dibuat tanpa efek bayangan untuk tampilan yang lebih sederhana. Di dalamnya, saya menyusun teks *title* dengan gaya tebal di bagian atas, diikuti oleh *content* sebagai isi *card*. Setiap *InfoCard* ditampilkan dalam sebuah *Row*, sehingga informasi pengguna dapat dilihat secara horizontal di layar.

    2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:
        
        a. Melihat daftar produk (Lihat Daftar Produk)
        
        b. Menambah produk (Tambah Produk)
        
        c. Logout (Logout)

        Saya membuat tiga tombol dengan nama dan ikon berbeda sesuai dengan fungsinya:
        - **Lihat Daftar Produk**: Tombol ini menampilkan ikon `production_quantity_limits_sharp` untuk melihat daftar produk yang tersedia.
        - **Tambah Produk**: Tombol ini menampilkan ikon `add` untuk menambahkan produk baru.
        - **Logout**: Tombol ini menampilkan ikon `logout` untuk keluar dari aplikasi.

        Setiap tombol diatur menggunakan *class* `ItemHomepage`, yang menyimpan informasi `name` dan `icon` dari setiap tombol, seperti berikut:
        ```dart
        final List<ItemHomepage> items = [
            ItemHomepage("Lihat Daftar Produk", Icons.production_quantity_limits_sharp),
            ItemHomepage("Tambah Produk", Icons.add),
            ItemHomepage("Logout", Icons.logout),
        ];
        ```
        Selanjutnya, saya membuat *widget ItemCard* yang akan menampilkan setiap tombol dalam format *card* berisi ikon dan teks. *Widget ItemCard* membungkus kontennya dengan `Material` dan `InkWell`, yang memberikan efek interaktif ketika tombol ditekan. Di dalamnya terdapat `Container` untuk mengatur *padding* di sekitar ikon dan teks agar terlihat lebih rapi. Konten tombol ditampilkan dalam `Column`, di mana ikon berada di bagian atas dan teks di bawahnya, tersusun secara vertikal.

        Untuk menampilkan ketiga tombol ini dalam bentuk *grid* di `MyHomePage`, saya menggunakan `GridView.count`, yang mengatur tombol-tombol tersebut dalam tiga kolom. Pengaturan `crossAxisCount: 3` memastikan *grid* memiliki tiga kolom, sehingga tombol-tombol tersusun secara horizontal. Dengan `items.map((item) => ItemCard(item)).toList()`, setiap *item* dalam `items` diubah menjadi *widget ItemCard* dan menampilkan ikon dan teks yang sesuai untuk setiap fungsi tombol.

    3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`).
        
        Selanjutnya, setelah membuat *ItemCard* sebagai *widget* yang menampilkan tombol dengan ikon dan teks, saya menerapkan warna-warna yang berbeda untuk setiap tombol (`Lihat Daftar Produk`, `Tambah Produk`, dan `Logout`). Warna ini diterapkan menggunakan *gradient background* yang memberikan tampilan visual yang lebih menarik dan memudahkan pengguna untuk membedakan setiap fungsi tombol. Berikut adalah penjelasan yang terdapat di dalam *ItemCard*:

        `gradientColors` digunakan sebagai *Map* Lokal yang didefinisikan di dalam `build` *method*, sehingga hanya digunakan dalam lingkup lokal *ItemCard* saja. Setiap nama tombol, seperti `Lihat Daftar Produk`, `Tambah Produk`, atau `Logout` memiliki warna gradasi khusus yang ditentukan dalam *Map* ini.

        ```dart
        final gradientColors = { 
        "Lihat Daftar Produk": [Colors.pink, const Color.fromARGB(255, 246, 150, 255)],
        "Tambah Produk": [Colors.pink, const Color.fromARGB(255, 255, 150, 150)],
        "Logout": [Colors.blue, const Color.fromARGB(255, 49, 21, 143)],
        };
        ```
        Karena `gradientColors` hanya berlaku di dalam `build` *method*, skema warna ini digunakan saat *widget ItemCard* dibangun dan tidak dapat diakses dari luar. Warna gradasi ini diterapkan pada `Container` di dalam *ItemCard*.

        Selanjutnya, di dalam `Container`, `BoxDecoration` menggunakan `gradientColors` untuk menampilkan warna gradasi berdasarkan nama tombol. Jika nama tombol tidak ada dalam Map, warna abu-abu akan digunakan sebagai *default*.
        
        ```dart
        decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColors[item.name] ?? [Colors.grey, Colors.grey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12),
        ),
        ```
        Dengan `gradientColors` sebagai variabel lokal, perubahan warna tombol dapat dilakukan langsung di *ItemCard* tanpa memengaruhi bagian lain dari kode.

    4. Memunculkan `Snackbar` dengan tulisan:
        - **"Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.**
        - **"Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.**
        - **"Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.**

        Untuk memunculkan *Snackbar* dengan pesan yang berbeda sesuai dengan tombol yang ditekan, saya menggunakan `InkWell` untuk memberikan efek interaktif pada setiap tombol. Saat tombol ditekan, `ScaffoldMessenger` akan digunakan untuk menampilkan `Snackbar` dengan pesan yang menyesuaikan nama tombol yang ditekan:

        "Kamu telah menekan tombol Lihat Daftar Produk" saat tombol Lihat Daftar Produk ditekan.
        "Kamu telah menekan tombol Tambah Produk" saat tombol Tambah Produk ditekan.
        "Kamu telah menekan tombol Logout" saat tombol Logout ditekan.
        Berikut implementasinya:

        ```dart
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!"),
                backgroundColor: Colors.pink[200], 
              ),
            );
        },
        ```
        Dengan `InkWell`, efek interaktif ditambahkan pada setiap tombol, dan `ScaffoldMessenger` secara dinamis menampilkan `Snackbar` sesuai dengan tombol yang ditekan, menggunakan `item.name` untuk mengisi teks pesan. Menambahkan `ScaffoldMessenger.of(context).hideCurrentSnackBar()` memastikan bahwa `Snackbar` sebelumnya disembunyikan sebelum yang baru muncul, sehingga hanya satu `Snackbar` yang tampil pada satu waktu, menciptakan pengalaman pengguna yang lebih rapi.

## TUGAS 8

- Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

    `const` di Flutter digunakan untuk mendeklarasikan variabel sebagai *immutable*, yaitu nilainya tidak bisa diubah setelah didefinisikan dan juga sebagai *compile-time constant* yang berarti nilainya sudah ditentukan sebelum program berjalan. Ada beberapa aturan `const`, yaitu nilainya tidak bisa diubah, perlu diberi nilai saat dideklarasikan, dan tidak boleh menggunakan nilai dinamis seperti `DateTime.now()`. Jika aturan ini dilanggar, kode akan error saat kompilasi. Dengan menggunakan `const`, Flutter dapat menghemat memori dan meningkatkan performa karena objek `const` tidak perlu dibuat ulang saat UI di-render. Berikut keuntungan menggunakan const:

    - Performa Lebih Cepat: Flutter tidak perlu membuat ulang objek `const`, sehingga UI lebih responsif.
    - Penghematan Memori: Objek `const` disimpan sekali dan dibagikan di seluruh aplikasi.
    - Kode Lebih Stabil: Nilai `const` tidak bisa diubah secara tidak sengaja sehingga menjadi lebih aman.

    Kapan sebaiknya kita menggunakan `const`? Kita dapat menggunakan `const` jika nilainya tidak akan berubah selama aplikasi berjalan, terutama untuk elemen UI statis seperti teks atau daftar yang tetap.

    ```dart
    const Text('Selamat datang di Floryn Shop!');
    const List<String> categories = ['Single Flower', 'Bouquet', 'Wedding'];
    ```

    Kita dapat menghindari penggunaan `const` jika nilai atau *widget* mungkin berubah selama *runtime*, misalnya untuk nilai dinamis berikut:

    ```dart
    final DateTime now = DateTime.now();
    ```
    Nilai ini bergantung pada waktu saat program berjalan, sehingga tidak cocok menggunakan `const`.

- Jelaskan dan bandingkan penggunaan *Column* dan *Row* pada Flutter. Berikan contoh implementasi dari masing-masing *layout widget* ini!

    *Column* dan *Row* adalah dua *widget layout* yang digunakan dalam Flutter untuk menata elemen UI, tetapi dengan arah yang berbeda. Keduanya memungkinkan kita untuk menyusun *widget* seperti teks, gambar, atau tombol dengan fleksibilitas dalam penyusunannya. Berikut ini adalah perbedaan antara kedua *widget* tersebut:

    - ***Column***: Menyusun elemen secara vertikal, dari atas ke bawah. *Widget* ini cocok jika kita ingin menampilkan elemen UI secara bertumpuk, misalnya untuk menampilkan judul, deskripsi, dan tombol di bawahnya. *Column* mendukung properti `mainAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu vertikal dan `crossAxisAlignment` untuk mengatur posisi di sumbu horizontal.
    - ***Row***: Menyusun elemen secara horizontal, dari kiri ke kanan. *Row* sering digunakan untuk menampilkan elemen UI sejajar, seperti ikon atau tombol dalam satu baris. *Row* juga mendukung `mainAxisAlignment` untuk mengatur posisi elemen di sepanjang sumbu horizontal dan `crossAxisAlignment` untuk mengatur posisi elemen di sumbu vertikal.

    Berikut contoh implementasi *Column* di Flutter yang digunakan untuk menampilkan teks sambutan dan daftar *item* secara vertikal.
    ```dart
    Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
                'Welcome to Floryn Shop',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                ),
            ),
            ),
            GridView.count(
            primary: true,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            shrinkWrap: true,
            children: items.map((ItemHomepage item) {
                return ItemCard(item);
            }).toList(),
            ),
        ],
    )
    ```
    -> *Column* digunakan untuk menyusun teks sambutan dan *grid item* secara vertikal.
    -> `crossAxisAlignment.center` memastikan teks dan *grid* berada di tengah secara horizontal.

    Berikut contoh implementasi *Row* yang digunakan untuk menampilkan beberapa informasi secara horizontal, seperti `NPM`, `Nama`, dan `Kelas`, dalam komponen *InfoCard*.
    ```dart
    Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            InfoCard(title: 'NPM', content: npm),
            InfoCard(title: 'Nama', content: nama),
            InfoCard(title: 'Kelas', content: namaKelas),
        ],
    )
    ```
    -> *Row* digunakan untuk menampilkan *widget InfoCard* secara horizontal.
    -> `mainAxisAlignment.spaceEvenly` memastikan setiap *card* memiliki jarak yang sama di antara mereka.

    Dengan demikian, *Column* digunakan saat kita ingin menampilkan elemen secara vertikal, sementara *Row* cocok untuk menampilkan elemen secara horizontal. Kedua *widget* ini sangat berguna dalam mengatur tata letak elemen UI di Flutter, dengan dukungan properti tambahan seperti `mainAxisAlignment` dan `crossAxisAlignment` yang memberikan kontrol lebih untuk menyesuaikan posisi dan jarak antar elemen sesuai kebutuhan.

- Sebutkan apa saja elemen input yang kamu gunakan pada halaman *form* yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    Pada tugas kali ini, saya menerapkan beberapa elemen input untuk menerima berbagai data produk dari pengguna, termasuk `TextFormField`, `DropdownButtonFormField`, dan `ElevatedButton`. Setiap elemen input memiliki peran khusus dan dilengkapi dengan validator untuk memastikan data yang diinput valid.

    - `TextFormField` digunakan pada beberapa *field* untuk menerima input teks atau angka:
        - ***Name***: Menerima nama produk dengan validator yang memastikan input tidak kosong dan maksimal 255 karakter.
        - ***Description***: Menerima deskripsi produk dan validator memastikan input tidak kosong serta tidak lebih dari 255 karakter.
        - ***Amount***: *Field* untuk jumlah produk dalam bentuk angka, dilengkapi validator agar input tidak kosong, berupa angka, dan bernilai minimal 1.
        - ***Price***: Menerima harga produk dalam bentuk angka dan validator memastikan input tidak kosong, berupa angka, serta bernilai minimal 0.
        - ***Rating***: Menerima *rating* produk dengan nilai antara 1 hingga 5 serta validator memastikan input berupa angka dan berada dalam rentang yang benar.
    - `DropdownButtonFormField` menyediakan pilihan ***product category*** dalam bentuk *dropdown* dengan validator yang memastikan kategori dipilih dan tidak kosong.
    - `ElevatedButton` adalah tombol "*Save*" yang berfungsi untuk menyimpan data jika semua validasi terpenuhi. Tombol ini juga memunculkan `AlertDialog` sebagai konfirmasi bahwa data telah berhasil disimpan.

    Selain elemen-elemen di atas, Flutter juga menyediakan elemen input lain yang belum digunakan dalam tugas ini. Beberapa di antaranya adalah sebagai berikut:
    - `Checkbox`: Digunakan untuk memilih opsi ya/tidak, seperti meminta persetujuan pengguna terhadap syarat dan ketentuan.
    - `Switch`: Mirip dengan `Checkbox`, tetapi berbentuk *toggle* untuk mengaktifkan atau menonaktifkan pilihan, misalnya menandai produk tersebut dapat dikembalikan atau tidak.
    - `Radio`: Cocok untuk pilihan ideal untuk opsi yang hanya memungkinkan satu pilihan dalam satu kelompok, misalnya memilih jenis bunga (Mawar, Tulip, atau Anggrek) di mana hanya satu jenis bunga yang bisa dipilih.
    - `Slider`: Mengatur nilai dalam rentang tertentu dengan menggeser, contohnya untuk mengatur jumlah bunga dalam *mixed arrangement*.
    - `DatePicker`: Digunakan untuk memilih tanggal, cocok untuk input seperti tanggal pengiriman bunga.
    - `TimePicker`: Digunakan untuk memilih waktu, cocok untuk pengaturan waktu pengantaran bunga.
    - `TextField` dengan Tipe *Keyboard* Khusus: Input ini dapat disesuaikan dengan tipe *keyboard* tertentu, seperti *keyboard* untuk *email*, nomor telepon, atau kata sandi. Fungsinya adalah agar pengguna lebih mudah memasukkan jenis data tertentu dengan *keyboard* yang sesuai. Misalnya, *keyboard* untuk email memiliki tombol `@` dan `.com` yang memudahkan pengguna, sementara untuk nomor telepon hanya menampilkan angka. Elemen ini belum dibutuhkan dalam *form* saat ini.

    Elemen-elemen tambahan ini belum diterapkan karena *form* saat ini hanya membutuhkan input dasar berupa teks dan angka. Namun, elemen-elemen tersebut dapat dipertimbangkan jika nantinya *form* memerlukan variasi input yang lebih kompleks atau kebutuhan input yang berbeda.

- Bagaimana cara kamu mengatur tema (*theme*) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    Iya, dalam implementasi proyek Floryn Shop, saya mengatur tema untuk menjaga tampilan aplikasi tetap konsisten menggunakan `ThemeData` di dalam `MaterialApp`. Dengan tema ini, saya dapat mengatur warna *primary* dan *secondary* untuk memastikan semua elemen UI memiliki gaya warna yang sama. Pengaturan tema ini diterapkan di `main.dart` sebagai berikut:

    ```dart
    theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
        ).copyWith(secondary: Colors.pink[200]),
    ),
    ```

    **Penerapan Tema di Proyek:**
    
    - **Warna Utama (*Primary*)**: `primarySwatch` diatur ke `Colors.pink` yang secara otomatis akan menerapkan warna utama pada elemen seperti `AppBar` dan lainnya.
        - ***AppBar***: Menggunakan `backgroundColor: Theme.of(context).colorScheme.primary` agar `AppBar` konsisten dengan warna utama.
        - ***Drawer***: Bagian atas `DrawerHeader` diatur dengan menggunakan `color: Theme.of(context).colorScheme.primary` supaya dapat menjaga tampilan yang konsisten di seluruh halaman.
        - ***Widget* Lain**: Tombol atau elemen teks juga menggunakan `Theme.of(context).colorScheme.primary` untuk merujuk ke warna utama.
    
    - **Warna Sekunder (*Secondary*)**: Dengan `copyWith`, warna sekunder diatur menjadi `Colors.pink[200]` yang digunakan untuk menjaga konsistensi di elemen-elemen lain.
        - ***Snackbar***: Ketika tombol pada *ItemCard* ditekan, *Snackbar* akan menampilkan notifikasi dengan `backgroundColor: Theme.of(context).colorScheme.secondary`.
        - ***Card* dan *Button***: Warna sekunder diterapkan sebagai latar belakang untuk beberapa *widget* agar terlihat kontras namun tetap serasi dengan warna utama.

    Dengan pengaturan tema ini, Floryn Shop menjaga tampilan yang serasi di seluruh komponen UI, membuat aplikasi tampak rapi dan konsisten.

- Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    Dalam implementasi proyek Floryn Shop, saya menangani navigasi antar halaman menggunakan `Navigator` di Flutter yang berfungsi sebagai *stack* untuk menambah dan menghapus halaman. Untuk memudahkan navigasi, saya juga menggunakan *widget* `Drawer` yang berisi beberapa `ListTile` sebagai menu navigasi ke berbagai halaman dalam aplikasi, seperti halaman utama dan halaman tambah produk.

    Beberapa metode yang saya gunakan dalam `Navigator` antara lain:
    - `Navigator.push`: Menambahkan halaman baru di atas halaman yang sedang aktif. `Navigator.push` menerima *context* dan *route* sebagai parameter, di mana *route* menunjukkan halaman baru yang ingin ditampilkan.
    - `Navigator.pop`: Menghapus halaman teratas dari *stack*, sehingga pengguna kembali ke halaman sebelumnya, biasanya digunakan saat proses di halaman tertentu selesai.

    Sebagai contoh, berikut implementasi pada `left_drawer.dart`:
    ```dart
    ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Halaman Utama'),
        onTap: () {
        Navigator.pop(context); // Menutup drawer terlebih dahulu
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => MyHomePage(),
            ),
        );
        },
    ),
    ListTile(
        leading: const Icon(Icons.production_quantity_limits),
        title: const Text('Tambah Produk'),
        onTap: () {
        Navigator.pop(context); // Menutup drawer terlebih dahulu
        Navigator.push(
            context,
            MaterialPageRoute(
            builder: (context) => const ProductFormPage(),
            ),
        );
        },
    ),
    ```
    Pada implementasi kode di atas:
    - `Navigator.pop(context)`; digunakan untuk menutup *drawer* sebelum melakukan navigasi ke halaman baru. Langkah ini dilakukan untuk menjaga agar tampilan aplikasi tetap rapi dan memastikan *drawer* tidak tetap terbuka saat halaman baru ditampilkan.
    - `Navigator.pushReplacement`; digunakan pada `ListTile` pertama (Halaman Utama) untuk mengganti halaman saat ini dengan `MyHomePage`, sehingga pengguna tidak dapat kembali ke halaman sebelumnya.
    - `Navigator.push`; digunakan pada `ListTile` kedua (Tambah Produk) untuk menambahkan `ProductFormPage` ke *stack* dan memungkinkan pengguna kembali ke halaman sebelumnya dengan tombol *back* atau *gesture* navigasi.

    Dengan pendekatan ini, navigasi di Floryn Shop menjadi lebih terstruktur dan mudah diakses serta memastikan pengguna dapat berpindah halaman dengan mulus sesuai kebutuhan.

    *Note*: Dalam soal, halaman disebut sebagai `Tambah Item`, namun di kode saya halaman ini ditampilkan sebagai `Tambah Produk`. Penamaan `Tambah Produk` dipilih untuk lebih mencerminkan konteks aplikasi Floryn Shop yang berfokus pada pengelolaan produk toko bunga.

## TUGAS 9

- Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    Model sangat penting dalam Flutter untuk melakukan CRUD pada data JSON, karena memungkinkan data dihubungkan ke dalam struktur yang konsisten dan mudah diakses. Dengan memanfaatkan model, pengolahan data menjadi lebih terorganisir menggunakan metode seperti `fromJson` dan `toJson`, yang membantu parsing dan serialisasi data secara efisien. Selain itu, model membantu validasi data, memastikan setiap atribut memiliki format dan tipe yang sesuai dengan kebutuhan aplikasi, sehingga meningkatkan keamanan dan kestabilan.

    Tanpa model, data JSON bisa sulit diolah, terutama dalam aplikasi yang kompleks, karena struktur data yang tidak terdefinisi dengan baik rentan menyebabkan kesalahan *runtime*. Dengan dukungan *library* seperti `json_serializable`, pembuatan model di Flutter menjadi lebih sederhana dan efisien. Model juga mempermudah integrasi dengan *widget* dan *state *management* seperti `Provider` yang menjaga konsistensi data yang ditampilkan di UI. Oleh karena itu, model menjadi komponen kunci untuk memastikan pengelolaan data pada aplikasi Flutter berjalan dengan lancar.

-  Jelaskan fungsi dari *library http* yang sudah kamu implementasikan pada tugas ini

    *Library http* yang diimplementasikan dalam tugas ini memiliki peran penting untuk menghubungkan aplikasi dengan server menggunakan protokol HTTP. Fungsinya adalah memungkinkan aplikasi untuk mengirimkan permintaan seperti `GET` untuk memperoleh data atau `POST` untuk mengirimkan data ke server. Selain itu, *library* ini juga menangani respon yang diterima dari server, umumnya dalam format `JSON`, untuk diproses lebih lanjut. Dengan adanya HTTP, integrasi API menjadi lebih sederhana, sehingga aplikasi dapat berkomunikasi dengan server secara dinamis dan mendukung pengolahan data secara *real-time*.

- Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa *instance* `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

    Pada Flutter, `CookieRequest` adalah sebuah objek yang berfungsi untuk mengelola sesi autentikasi dan menyimpan informasi *cookie* dari server dalam aplikasi. Dengan menggunakan `CookieRequest`, aplikasi dapat melakukan permintaan HTTP seperti `GET` dan `POST` dengan menyertakan *cookie*. Hal ini memastikan bahwa sesi pengguna tetap aktif, sehingga pengguna tidak perlu *login* berulang kali selama menggunakan aplikasi.

    Fitur utama `CookieRequest` antara lain:
    - *Session Authentication*: Menyimpan dan mengelola informasi sesi pengguna yang diperoleh dari *cookie*.
    - Pengiriman Otomatis *Cookie*: Menyertakan *cookie* secara otomatis dalam setiap permintaan HTTP ke server, memastikan autentikasi berjalan lancar.
    - Mendukung Permintaan HTTP yang Memerlukan Autentikasi: Digunakan untuk mengakses data atau layanan yang hanya tersedia bagi pengguna yang sudah *login*.

    Membagikan *instance* `CookieRequest` penting untuk menjaga konsistensi autentikasi dan sesi di seluruh aplikasi, sehingga semua komponen dapat mengakses informasi sesi yang sama tanpa perlu membuat ulang objek. Hal ini meningkatkan efisiensi, memudahkan integrasi antar-komponen seperti *login* dan *dashboard*, serta memungkinkan permintaan HTTP dengan autentikasi dilakukan dari mana saja. Dengan *state management* seperti `Provider`, `CookieRequest` berperan penting dalam pengelolaan sesi pengguna secara konsisten.

-  Jelaskan mekanisme pengiriman data mulai dari *input* hingga dapat ditampilkan pada Flutter.

    1. *Input* Data dari Pengguna: Pengguna memasukkan data melalui *widget input* seperti `TextField` atau `Form`. *Widget* ini berfungsi untuk mengumpulkan data yang akan digunakan dalam aplikasi.
    2. Pengiriman Data ke Server: Data yang sudah dikumpulkan diubah menjadi format tertentu, misalnya `JSON`. Kemudian dikirim ke *server* melalui protokol HTTP. Biasanya, pengiriman ini menggunakan *library* seperti `http` atau `CookieRequest` untuk memasukkan data dalam permintaan `POST`.
    3. Pemrosesan Data di Server: Server menerima data yang dikirim oleh aplikasi dan memprosesnya sesuai dengan aturan atau fungsi yang sudah dibuat. Server dapat menyimpan data ke *database* atau menjalankan operasi tertentu, kemudian mengirimkan respons berupa data yang diperbarui atau status proses yang dilakukan.
    4. Penerimaan Respons: Aplikasi Flutter menerima respons dari *server* dan memprosesnya dengan mengubah data menjadi model atau objek yang sesuai. Hal ini memastikan data yang diterima memiliki struktur yang konsisten dan mudah digunakan di dalam aplikasi.
    5. Menampilkan Data kepada Pengguna: Objek data yang telah diproses diteruskan ke *widget* untuk ditampilkan pada UI pengguna, seperti menggunakan `ListView`. Flutter secara otomatis memperbarui tampilan ketika ada perubahan data, sehingga pengguna dapat melihat hasil *input* atau data yang telah diproses oleh *server* secara langsung.

- Jelaskan mekanisme autentikasi dari *login*, *register*, hingga *logout*. Mulai dari *input data* akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

    1. *Login*
    - Masukkan Data *Login*: Pengguna mengisi formulir *login* di Flutter dengan *username* dan *password*.
    - Kirim Permintaan *Login*: Flutter mengirim permintaan `POST` ke *endpoint* Django `/auth/login/` dengan data *login* berupa *username* dan *password*.
    - Validasi di *Server*: Django memverifikasi apakah *username* dan *password* yang dikirim cocok dengan data di *database*. Jika valid, Django membuat sesi pengguna dan mengirimkan *cookie* sesi kembali ke Flutter.
    - Simpan *Cookie* di Flutter: Flutter menggunakan `CookieRequest` untuk menyimpan *cookie* sesi dari Django. *Cookie* ini digunakan untuk melakukan permintaan terautentikasi di masa mendatang.
    - Pindah ke Halaman Beranda: Jika *login* berhasil, Flutter menampilkan pesan sukses dan membawa pengguna ke halaman utama (misalnya `MyHomePage`). Jika *login* gagal, Flutter menampilkan pesan *error*.

    2. *Register*
    - Isi Data Registrasi: Pengguna mengisi formulir pendaftaran di Flutter dengan *username*, *password*, dan konfirmasi *password*.
    - Kirim Permintaan *Register*: Flutter mengirim permintaan `POST` ke *endpoint* Django `/auth/register/` dengan data *username* dan *password*.
    - Validasi di *Server*: Django memeriksa apakah *username* sudah terdaftar di *database* dan memastikan *password valid*. Jika validasi berhasil, Django membuat akun baru dan mengirimkan respons sukses ke Flutter.
    - Pindah ke Halaman *Login*: Setelah proses pendaftaran selesai, Flutter menampilkan pesan sukses dan mengarahkan pengguna ke halaman *login* agar pengguna bisa masuk dengan akun baru mereka.

    3. *Logout*
    - Kirim Permintaan *Logout*: Saat pengguna menekan tombol *logout*, Flutter mengirim permintaan `POST` ke *endpoint* Django `/auth/logout/`.
    - Hapus Sesi di Server: Django menghapus sesi pengguna di server dan menghilangkan *cookie* sesi terkait, menandakan bahwa pengguna telah keluar dari akun mereka.
    - Hapus *Cookie* di Flutter: Flutter juga menghapus *cookie* sesi yang tersimpan di aplikasi, sehingga pengguna tidak bisa melakukan permintaan terautentikasi lagi tanpa *login* ulang.
    - Pindah ke Halaman Login: Setelah *logout* berhasil, Flutter menampilkan pesan sukses dan membawa pengguna kembali ke halaman *login*.

- Jelaskan bagaimana cara kamu mengimplementasikan *checklist* di atas secara *step-by-step*! (bukan hanya sekadar mengikuti tutorial).

    1. Membuat django app bernama *authentication* dengan menjalankan `py manage.py startapp authentication`
    2. Menambahkan *authentication* ke `INSTALLED_APPS` di `settings.py`
    3. *Install* `corsheaders` dan menambahkannya pada `MIDDLEWARE`. Kemudian, menambahkan beberapa `variabel cors` pada `settings.py`
    4. Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.
    - Halaman Registrasi:
        Membuat formulir pendaftaran di halaman register dengan input untuk username, password, dan konfirmasi password.
        Menambahkan validasi sederhana agar input tidak kosong dan memastikan password cocok dengan konfirmasi password.
        Ketika tombol "Register" ditekan, data formulir dikirim dalam format JSON menggunakan CookieRequest melalui metode POST ke endpoint /auth/register/ di Django.
    - Proses Backend di Django:
        Fungsi register() memeriksa validitas data yang dikirimkan, memastikan bahwa password cocok dan username belum digunakan.
        Jika validasi berhasil, Django membuat akun baru menggunakan User.objects.create_user() dan mengembalikan respons sukses ke Flutter dengan status 200.
    - Flutter:
        Setelah menerima respons sukses, Flutter menampilkan notifikasi menggunakan SnackBar.
        Pengguna diarahkan ke halaman login menggunakan Navigator.pushReplacement().
    5. Membuat halaman login pada proyek tugas Flutter.
    - Halaman Login:
        Membuat halaman login dengan dua input, yaitu username dan password.
        Ketika tombol "Login" ditekan, data dikirim dalam format JSON menggunakan CookieRequest ke endpoint /auth/login/ di Django.
    - Proses Backend di Django:
        Django memverifikasi data menggunakan fungsi authenticate() untuk mencocokkan username dan password.
        Jika valid, Django membuat sesi pengguna dengan auth_login() dan mengirimkan cookie sesi ke Flutter.
    - Flutter:
        Jika login berhasil, Flutter menyimpan cookie sesi dan menampilkan pesan sukses menggunakan SnackBar.
        Aplikasi mengarahkan pengguna ke halaman utama (MyHomePage). Jika gagal, menampilkan pesan error menggunakan AlertDialog.
    6. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
    - Penggunaan Library:
        Menggunakan library pbp_django_auth di Flutter untuk mempermudah autentikasi berbasis cookie.
        CookieRequest memungkinkan Flutter menyimpan cookie sesi yang diterima dari Django dan secara otomatis menyertakannya pada setiap request berikutnya.
    - Penerapan Global:
        Membagikan instance CookieRequest secara global menggunakan Provider, sehingga semua komponen di aplikasi Flutter dapat mengakses sesi pengguna tanpa harus membuat instance baru.
    7. Membuat model kustom sesuai dengan proyek aplikasi Django.
    - Proses Pembuatan Model:

        a. Mengambil contoh JSON dari endpoint Django yang mengembalikan daftar produk.

        b. Menggunakan QuickType untuk mengonversi respons JSON menjadi model Dart yang berisi atribut produk seperti name, price, dan description.

        c. Model yang dihasilkan dapat langsung digunakan di Flutter untuk mempermudah manipulasi data.
    8. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
    - Pengambilan Data

        a. Menggunakan metode fetchProduct() untuk mengambil data dari endpoint /json/ melalui CookieRequest dengan metode GET.

        b. Data JSON yang diterima diubah menjadi daftar objek Product menggunakan metode fromJson().
    - Menampilkan Daftar

        a. Jika data belum diterima, menampilkan CircularProgressIndicator sebagai indikator loading.

        b. Jika data tersedia, menggunakan ListView.builder untuk menampilkan daftar produk. Setiap item produk ditampilkan dengan atribut seperti name, price, dan description.
    9. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
    - Navigasi ke Detail

        Ketika salah satu item pada daftar produk ditekan, pengguna diarahkan ke halaman detail produk menggunakan Navigator.push(), dengan mengirim data produk sebagai argumen.
    - Menampilkan Detail

        Di halaman detail, menampilkan semua atribut produk seperti name, price, description, category, amount, dan rating secara terstruktur.
    - Navigasi Kembali

        Menambahkan tombol "Back" untuk kembali ke halaman daftar produk dengan fungsi Navigator.pop().
    10. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.
    - Proses di Django:

        a. Memodifikasi endpoint di Django untuk hanya mengembalikan item yang terkait dengan pengguna login menggunakan filter query berbasis request.user.
    - Proses di Flutter:

        a. Mengambil data dari endpoint yang sudah difilter menggunakan CookieRequest.

        b. Menampilkan daftar produk di Flutter hanya untuk pengguna yang login.
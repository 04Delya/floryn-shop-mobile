import 'package:flutter/material.dart';
import 'package:floryn_shop/screens/product_form.dart';

class ItemHomepage {
    final String name;
    final IconData icon;

    ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    final gradientColors = { 
      "Lihat Daftar Produk": [Colors.pink, const Color.fromARGB(255, 246, 150, 255)],
      "Tambah Produk": [Colors.pink, const Color.fromARGB(255, 255, 150, 150)],
      "Logout": [Colors.blue, const Color.fromARGB(255, 49, 21, 143)],
    };
    
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
              content: Text("Kamu telah menekan tombol ${item.name}!"),
              backgroundColor: Theme.of(context).colorScheme.secondary, 
            ),
          );

          if (item.name == "Tambah Produk") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductFormPage()),
            );
          }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
           decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors[item.name] ?? [Colors.grey, Colors.grey], // Warna default jika tidak ditemukan
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
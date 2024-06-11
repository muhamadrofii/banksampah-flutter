import 'package:flutter/material.dart';
import 'main.dart';
import 'demo_mw_tab_bar_screen3.dart';

class HomeTabPage extends StatefulWidget {
  @override
  _HomeTabPageState createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage> {
  List<bool> _expanded = List<bool>.generate(4, (index) => false);

  // Daftar gambar berita
  List<String> newsImages = [
    'foto1.jpg',
    'foto2.png',
    'foto3.jpg',
    'foto4.png',
    // tambahkan gambar berita lainnya sesuai kebutuhan
  ];

  // Daftar judul berita
  List<String> newsTitles = [
    '9 Contoh Sampah Organik Basah Cara Pengelolaannya',
    'Pengertian Sampah & Jenis-Jenisnya',
    'Ini dompetmu bung',
    'Retri indomaret',
    // tambahkan judul berita lainnya sesuai kebutuhan
  ];

  // Daftar konten berita
  List<String> newsContents = [
    'Contoh sampah organik basah adalah jenis sampah yang terdiri dari bahan-bahan organik yang mudah membusuk. Ciri khasnya adalah kemampuan untuk membusuk dan mengalami dekomposisi alami oleh mikroorganisme seperti bakteri, jamur, dan cacing tanah.'
    'Sampah organik basah umumnya mengandung banyak air. Inilah yang membuatnya mudah membusuk dan mendukung pertumbuhan mikroorganisme pengurai.'
    'https://kumparan.com/ragam-info/9-contoh-sampah-organik-basah-cara-pengelolaannya-22oXLb9nGTv',
    'sampah anorganik tidak dapat terurai secara alami (undegradable) karena materialnya tidak berasal dari alam melainkan hasil olahan dari bahan sintetik tertentu.'
    'Beberapa contoh sampah anorganik yang sering dijumpai sehari-hari misalnya seperti kantong plastik, kaleng, aluminium, botol kaca, styrofoam, karton, tekstil dan masih banyak lagi. Barang-barang dengan material tersebut tidak dapat membusuk dengan bantuan alam, untuk itu harus diolah kembali oleh manusia atau mesin agar bisa dimanfaatkan menjadi produk baru.'
    'https://waste4change.com/blog/sampah-pengertian-jenis-hingga-peraturannya-di-indonesia/',
    'hei tuan ini dompetmu'
    'itu bukan dompetku'
    'tapi disini tertulis patrick, itu namamu kan'
    'yap'
    'makannya diambil'
    'tapi itu bukan dompetku'
    'argh kepala pentil',
    'Poke, Indomaret, Kumar',
    // tambahkan konten berita lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _expanded[index] = !_expanded[index];
                  });
                },
                child: Row(
                  children: [
                    // Gambar di sebelah kiri
                    Image.asset(
                      'lib/images/${newsImages[index % newsImages.length]}',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(width: 40), // Jarak 2cm (sekitar 40px)
                    // Judul berita di sebelah kanan
                    Expanded(
                      child: Text(
                        '${newsTitles[index % newsTitles.length]}',
                        style: TextStyle(
                          color: appStore.textPrimaryColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_expanded[index])
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Text(
                    '${newsContents[index % newsContents.length]}',
                    style: TextStyle(
                      color: appStore.textSecondaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ],
        );
      },
    );
  }
}

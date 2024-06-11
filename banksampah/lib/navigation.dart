// import 'package:flutter/material.dart';

// class DemoMWTabBarScreen3 extends StatefulWidget {
//   static String tag = "/DemoMWTabBarScreen3";

//   @override
//   _DemoMWTabBarScreen3State createState() => _DemoMWTabBarScreen3State();
// }

// class _DemoMWTabBarScreen3State extends State<DemoMWTabBarScreen3>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(vsync: this, length: 5);
//     _tabController!.addListener(_handleTabSelection);
//   }

//   void _handleTabSelection() {
//     setState(() {});
//   }

//   init() async {}

//   @override
//   void setState(fn) {
//     if (mounted) super.setState(fn);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: appStore.appBarColor,
//           iconTheme: IconThemeData(color: appStore.iconColor),
//           title: Text(
//             'HOME',
//             style: TextStyle(
//               color: appStore.textPrimaryColor,
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//           bottom: TabBar(
//             controller: _tabController,
//             onTap: (index) {
//               print(index);
//             },
//             indicatorColor: Colors.blue,
//             tabs: [
//               Tab(
//                 icon: Icon(
//                   Icons.home,
//                   color: _tabController!.index != 0
//                       ? appStore.iconSecondaryColor
//                       : Colors.blue,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.map,
//                   color: _tabController!.index != 1
//                       ? appStore.iconSecondaryColor
//                       : Colors.blue,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.delete,
//                   color: _tabController!.index != 2
//                       ? appStore.iconSecondaryColor
//                       : Colors.blue,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.notifications,
//                   color: _tabController!.index != 3
//                       ? appStore.iconSecondaryColor
//                       : Colors.blue,
//                 ),
//               ),
//               Tab(
//                 icon: Icon(
//                   Icons.menu,
//                   color: _tabController!.index != 4
//                       ? appStore.iconSecondaryColor
//                       : Colors.blue,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           controller: _tabController,
//           children: [
//             HomeTabPage(),
//             MapsTabPage(),
//             ScheduleTabPage(),
//             NotificationsTabPage(),
//             MenuTabPage(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeTabPage extends StatefulWidget {
//   @override
//   _HomeTabPageState createState() => _HomeTabPageState();
// }

// class _HomeTabPageState extends State<HomeTabPage> {
//   List<bool> _expanded = List<bool>.generate(4, (index) => false);

//   // Daftar gambar berita
//   List<String> newsImages = [
//     'foto1.jpg',
//     'foto2.png',
//     'foto3.jpg',
//     'foto4.png',
//     // tambahkan gambar berita lainnya sesuai kebutuhan
//   ];

//   // Daftar judul berita
//   List<String> newsTitles = [
//     '9 Contoh Sampah Organik Basah Cara Pengelolaannya',
//     'Pengertian Sampah & Jenis-Jenisnya',
//     'Ini dompetmu bung',
//     'Retri indomaret',
//     // tambahkan judul berita lainnya sesuai kebutuhan
//   ];

//   // Daftar konten berita
//   List<String> newsContents = [
//     'Contoh sampah organik basah adalah jenis sampah yang terdiri dari bahan-bahan organik yang mudah membusuk. Ciri khasnya adalah kemampuan untuk membusuk dan mengalami dekomposisi alami oleh mikroorganisme seperti bakteri, jamur, dan cacing tanah.'
//     'Sampah organik basah umumnya mengandung banyak air. Inilah yang membuatnya mudah membusuk dan mendukung pertumbuhan mikroorganisme pengurai.'
//     'https://kumparan.com/ragam-info/9-contoh-sampah-organik-basah-cara-pengelolaannya-22oXLb9nGTv',
//     'sampah anorganik tidak dapat terurai secara alami (undegradable) karena materialnya tidak berasal dari alam melainkan hasil olahan dari bahan sintetik tertentu.'
//     'Beberapa contoh sampah anorganik yang sering dijumpai sehari-hari misalnya seperti kantong plastik, kaleng, aluminium, botol kaca, styrofoam, karton, tekstil dan masih banyak lagi. Barang-barang dengan material tersebut tidak dapat membusuk dengan bantuan alam, untuk itu harus diolah kembali oleh manusia atau mesin agar bisa dimanfaatkan menjadi produk baru.'
//     'https://waste4change.com/blog/sampah-pengertian-jenis-hingga-peraturannya-di-indonesia/',
//     'hei tuan ini dompetmu'
//     'itu bukan dompetku'
//     'tapi disini tertulis patrick, itu namamu kan'
//     'yap'
//     'makannya diambil'
//     'tapi itu bukan dompetku'
//     'argh kepala pentil',
//     'Poke, Indomaret, Kumar',
//     // tambahkan konten berita lainnya sesuai kebutuhan
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 4,
//       itemBuilder: (context, index) {
//         return Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//               child: InkWell(
//                 onTap: () {
//                   setState(() {
//                     _expanded[index] = !_expanded[index];
//                   });
//                 },
//                 child: Row(
//                   children: [
//                     // Gambar di sebelah kiri
//                     Image.asset(
//                       'lib/images/${newsImages[index % newsImages.length]}',
//                       width: 50,
//                       height: 50,
//                     ),
//                     SizedBox(width: 40), // Jarak 2cm (sekitar 40px)
//                     // Judul berita di sebelah kanan
//                     Expanded(
//                       child: Text(
//                         '${newsTitles[index % newsTitles.length]}',
//                         style: TextStyle(
//                           color: appStore.textPrimaryColor,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             if (_expanded[index])
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: Container(
//                   padding: const EdgeInsets.all(16.0),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10.0),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black12,
//                         blurRadius: 10.0,
//                         offset: Offset(0, 10),
//                       ),
//                     ],
//                   ),
//                   child: Text(
//                     '${newsContents[index % newsContents.length]}',
//                     style: TextStyle(
//                       color: appStore.textSecondaryColor,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             Divider(
//               color: Colors.grey,
//               thickness: 1,
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// class MapsTabPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Maps',
//         style: TextStyle(color: appStore.textPrimaryColor, fontSize: 24),
//       ),
//     );
//   }
// }

// class ScheduleTabPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Jadwal Angkut',
//         style: TextStyle(color: appStore.textPrimaryColor, fontSize: 24),
//       ),
//     );
//   }
// }

// class NotificationsTabPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text(
//         'Notifications',
//         style: TextStyle(color: appStore.textPrimaryColor, fontSize: 24),
//       ),
//     );
//   }
// }

// class MenuTabPage extends StatefulWidget {
//   @override
//   _MenuTabPageState createState() => _MenuTabPageState();
// }

// class _MenuTabPageState extends State<MenuTabPage> {
//   bool _darkMode = false;

//   Future<void> _showLogoutDialog() async {
//     return showDialog<void>(
//       context: context,
//       barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Logout'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 Text('Apakah Anda yakin ingin logout?'),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: Text('Batal'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: Text('Logout'),
//               onPressed: () {
//                 // Implementasikan logika logout di sini
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(16.0),
//       children: [
//         ExpansionTile(
//           leading: Icon(Icons.settings, color: appStore.iconColor),
//           title: Text('Pengaturan', style: TextStyle(color: appStore.textPrimaryColor)),
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 40.0),
//               child: Column(
//                 children: [
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     leading: Icon(Icons.account_circle, color: appStore.iconColor),
//                     title: Text('Informasi Akun', style: TextStyle(color: appStore.textPrimaryColor)),
//                     onTap: () {
//                       // Handle tap event
//                     },
//                   ),
//                   Divider(),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     leading: Icon(Icons.description, color: appStore.iconColor),
//                     title: Text('Persyaratan dan Ketentuan', style: TextStyle(color: appStore.textPrimaryColor)),
//                     onTap: () {
//                       // Handle tap event
//                     },
//                   ),
//                   Divider(),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     leading: Icon(Icons.brightness_6, color: appStore.iconColor),
//                     title: Text('Ubah Mode', style: TextStyle(color: appStore.textPrimaryColor)),
//                     trailing: Switch(
//                       value: _darkMode,
//                       onChanged: (value) {
//                         setState(() {
//                           _darkMode = value;
//                           appStore.backgroundColor = _darkMode ? Colors.black : Colors.white;
//                           appStore.textPrimaryColor = _darkMode ? Colors.white : Colors.black;
//                           appStore.appBarColor = _darkMode ? Colors.black : Colors.white;
//                           appStore.iconColor = _darkMode ? Colors.white : Colors.black;
//                         });
//                       },
//                     ),
//                   ),
//                   Divider(),
//                   ListTile(
//                     contentPadding: EdgeInsets.zero,
//                     leading: Icon(Icons.info, color: appStore.iconColor),
//                     title: Text('Informasi Versi Aplikasi', style: TextStyle(color: appStore.textPrimaryColor)),
//                     onTap: () {
//                       // Handle tap event
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.help, color: appStore.iconColor),
//           title: Text('Layanan', style: TextStyle(color: appStore.textPrimaryColor)),
//           onTap: () {
//             // Handle tap event
//           },
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.feedback, color: appStore.iconColor),
//           title: Text('Aduan', style: TextStyle(color: appStore.textPrimaryColor)),
//           onTap: () {
//             // Handle tap event
//           },
//         ),
//         Divider(),
//         ExpansionTile(
//           leading: Icon(Icons.phone, color: appStore.iconColor),
//           title: Text('Call Service', style: TextStyle(color: appStore.textPrimaryColor)),
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 40.0),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Icon(Icons.phone, color: appStore.iconColor),
//                     title: Text('Cs. 083197971346', style: TextStyle(color: appStore.textPrimaryColor)),
//                     onTap: () {
//                     // Handle tap event
//                     },
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.phone, color: appStore.iconColor),
//                     title: Text('Cs. 083144853630', style: TextStyle(color: appStore.textPrimaryColor)),
//                     onTap: () {
//                     // Handle tap event
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Divider(),
//         ListTile(
//           leading: Icon(Icons.logout, color: appStore.iconColor),
//           title: Text('Logout', style: TextStyle(color: appStore.textPrimaryColor)),
//           onTap: _showLogoutDialog,
//         ),
//       ],
//     );
//   }
// }

// class AppStore {
//   Color? textPrimaryColor;
//   Color? iconColorPrimaryDark;
//   Color? scaffoldBackground;
//   Color? backgroundColor;
//   Color? backgroundSecondaryColor;
//   Color? appColorPrimaryLightColor;
//   Color? textSecondaryColor;
//   Color? appBarColor;
//   Color? iconColor;
//   Color? iconSecondaryColor;
//   Color? cardColor;

//   AppStore() {
//     textPrimaryColor = Color(0xFF212121);
//     iconColorPrimaryDark = Color(0xFF212121);
//     scaffoldBackground = Color(0xFFEBF2F7);
//     backgroundColor = Colors.black;
//     backgroundSecondaryColor = Color(0xFF131d25);
//     appColorPrimaryLightColor = Color(0xFFF9FAFF);
//     textSecondaryColor = Color(0xFF5A5C5E);
//     appBarColor = Colors.white;
//     iconColor = Color(0xFF212121);
//     iconSecondaryColor = Color(0xFFA8ABAD);
//     cardColor = Color(0xFF191D36);
//   }
// }

// AppStore appStore = AppStore();

// void main() {
//   runApp(MaterialApp(
//     home: DemoMWTabBarScreen3(),
//   ));
// }
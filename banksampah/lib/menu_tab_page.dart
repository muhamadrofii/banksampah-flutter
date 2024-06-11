import 'package:flutter/material.dart';
import 'main.dart';
import 'demo_mw_tab_bar_screen3.dart';

class MenuTabPage extends StatefulWidget {
  @override
  _MenuTabPageState createState() => _MenuTabPageState();
}

class _MenuTabPageState extends State<MenuTabPage> {
  bool _darkMode = false;

  Future<void> _showLogoutDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Apakah Anda yakin ingin logout?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Logout'),
              onPressed: () {
                // Implementasikan logika logout di sini
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        ExpansionTile(
          leading: Icon(Icons.settings, color: appStore.iconColor),
          title: Text('Pengaturan', style: TextStyle(color: appStore.textPrimaryColor)),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.account_circle, color: appStore.iconColor),
                    title: Text('Informasi Akun', style: TextStyle(color: appStore.textPrimaryColor)),
                    onTap: () {
                      // Handle tap event
                    },
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.description, color: appStore.iconColor),
                    title: Text('Persyaratan dan Ketentuan', style: TextStyle(color: appStore.textPrimaryColor)),
                    onTap: () {
                      // Handle tap event
                    },
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.brightness_6, color: appStore.iconColor),
                    title: Text('Ubah Mode', style: TextStyle(color: appStore.textPrimaryColor)),
                    trailing: Switch(
                      value: _darkMode,
                      onChanged: (value) {
                        setState(() {
                          _darkMode = value;
                          appStore.backgroundColor = _darkMode ? Colors.black : Colors.white;
                          appStore.textPrimaryColor = _darkMode ? Colors.white : Colors.black;
                          appStore.appBarColor = _darkMode ? Colors.black : Colors.white;
                          appStore.iconColor = _darkMode ? Colors.white : Colors.black;
                        });
                      },
                    ),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.info, color: appStore.iconColor),
                    title: Text('Informasi Versi Aplikasi', style: TextStyle(color: appStore.textPrimaryColor)),
                    onTap: () {
                      // Handle tap event
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.help, color: appStore.iconColor),
          title: Text('Layanan', style: TextStyle(color: appStore.textPrimaryColor)),
          onTap: () {
            // Handle tap event
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.feedback, color: appStore.iconColor),
          title: Text('Aduan', style: TextStyle(color: appStore.textPrimaryColor)),
          onTap: () {
            // Handle tap event
          },
        ),
        Divider(),
        ExpansionTile(
          leading: Icon(Icons.phone, color: appStore.iconColor),
          title: Text('Call Service', style: TextStyle(color: appStore.textPrimaryColor)),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.phone, color: appStore.iconColor),
                    title: Text('Cs. 083197971346', style: TextStyle(color: appStore.textPrimaryColor)),
                    onTap: () {
                    // Handle tap event
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.phone, color: appStore.iconColor),
                    title: Text('Cs. 083144853630', style: TextStyle(color: appStore.textPrimaryColor)),
                    onTap: () {
                    // Handle tap event
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.logout, color: appStore.iconColor),
          title: Text('Logout', style: TextStyle(color: appStore.textPrimaryColor)),
          onTap: _showLogoutDialog,
        ),
      ],
    );
  }
}

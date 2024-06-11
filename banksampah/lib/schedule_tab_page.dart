import 'package:flutter/material.dart';
import 'main.dart';
import 'demo_mw_tab_bar_screen3.dart';
class ScheduleTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Jadwal Angkut',
        style: TextStyle(color: appStore.textPrimaryColor, fontSize: 24),
      ),
    );
  }
}

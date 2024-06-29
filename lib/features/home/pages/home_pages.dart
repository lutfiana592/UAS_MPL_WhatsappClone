import 'package:flutter/material.dart';
import 'package:flutter_application_wa/features/home/pages/Komunitas_home_page.dart';
import 'package:flutter_application_wa/features/home/pages/Panggilan_home_page.dart';
import 'package:flutter_application_wa/features/home/pages/Pembaruan_home_pages.dart';

import 'chatt_home_page.dart'; // Import halaman konten Chats

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ChattPage(), // Halaman untuk tab Chats
    PembaruanPage(), // Halaman untuk tab Status
    KomunitasPage(), // Halaman untuk tab Calls
    PanggilanPage() // Halaman untuk tab Settings (tambahan baru)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_very_dissatisfied_rounded),
            label: 'Pembaruan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Komunitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Pannggilan',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

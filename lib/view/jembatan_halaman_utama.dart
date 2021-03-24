import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_restapi/view/detail_halaman_property.dart';
import 'package:provider_restapi/view/halaman_property.dart';
import 'package:provider_restapi/view/profi.dart';

class HalamanUtama extends StatefulWidget {
  @override
  _HalamanUtamaState createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  int currentIndex = 0;

  List listofColors = [
    KategoryPropertiPage(),
    DetailKategoryPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: listofColors[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        animationDuration: Duration(milliseconds: 300),
        showElevation: true,
        // backgroundColor: Colors.black87,
        curve: Curves.easeInOut,
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(
            () => currentIndex = index,
          );
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(Icons.home, size: 24),
              title: Text("Beranda", style: GoogleFonts.poppins(fontSize: 16)),
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.list, size: 24),
              title: Text("Daftar List", style: GoogleFonts.poppins(fontSize: 16)),
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.grey),
          BottomNavyBarItem(
              icon: Icon(Icons.person, size: 24),
              title: Text("Data Diri", style: GoogleFonts.poppins(fontSize: 16)),
              activeColor: Colors.lightBlue,
              inactiveColor: Colors.grey),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_restapi/widget/cardCategory_detail.dart';
import 'package:provider_restapi/widget/card_list.dart';

// ignore: must_be_immutable
class DetailKategoryPage extends StatefulWidget {
  @override
  _DetailKategoryPageState createState() => _DetailKategoryPageState();
}

class _DetailKategoryPageState extends State<DetailKategoryPage> {
  int selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios, color: Colors.black),
          title: Text(
            "Kategory yang tersedia",
            style: GoogleFonts.poppins(fontSize: 20, color: Colors.black87),
          ),
          bottom: TabBar(
            onTap: (index) {
              selectedIndex = index;
            },
            tabs: [
              Tab(
                  child: Text("Kemarin",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.blue))),
              Tab(
                  child: Text("Hari ini",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.blue))),
              Tab(
                  child: Text("Akan datang",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.blue))),
            ],
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 60,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 40,
                                color: Colors.blue.withOpacity(.2),
                                offset: Offset(2, 10)),
                          ],
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Check in",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color(0xFF4CCD2F),
                                  fontWeight: FontWeight.w700)),
                          Text("Check Out",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Color(0xFFD3494C),
                                  fontWeight: FontWeight.w700)),
                        ],
                      ))),
            ),
            TabBarView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cardCategoryDetail(),
                    cardCategoryDetail(),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: CardListAdmin(
                          nama: "Muh Nur Aslam",
                          noHp: "+62 825-332-656-110",
                          kamar: " Room 1 Standart"),
                    ),
                  ],
                ),
                Center(child: Text("Akan Datang"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}



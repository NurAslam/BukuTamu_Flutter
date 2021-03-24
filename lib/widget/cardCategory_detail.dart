import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardCategoryDetail extends StatefulWidget {
  @override
  _cardCategoryDetailState createState() => _cardCategoryDetailState();
}

class _cardCategoryDetailState extends State<cardCategoryDetail> {
  void slideSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              color: Color(0xFF737373),
              child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text("Hello World"),
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 330,
        width: 200,
        child: Stack(
          children: [
            Container(
              height: 330,
              width: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 40,
                    color: Colors.blue.withOpacity(.2),
                    offset: Offset(2, 10)),
              ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1582378944540-7f8685722d32?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=728&q=80"),
                          fit: BoxFit.cover),
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, bottom: 5),
                  child: Flexible(
                    child: Container(
                      width: 200,
                      child: Text("Maharaja Yellow Homestay, enduednu",
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("6 kamar terisi",
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text("10 kamar tersedia",
                      style: GoogleFonts.poppins(
                          fontSize: 10, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 8),
                  child: Row(
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                            child: Text("2 Promo",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 8, color: Colors.blue))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("1 Standart",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                fontSize: 8, color: Colors.blue)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: GestureDetector(
                onTap: slideSheet,
                child: CircleAvatar(
                  child: Icon(Icons.add, size: 24, color: Colors.white),
                  backgroundColor: Colors.green,
                  maxRadius: 15,
                  minRadius: 5,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

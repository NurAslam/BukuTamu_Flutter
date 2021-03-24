import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardListAdmin extends StatelessWidget {
  final String nama;
  final String noHp;
  final String kamar;

  const CardListAdmin({Key key, this.nama, this.noHp, this.kamar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 20,
        color: Colors.white,
        shadowColor: Colors.blue.withOpacity(0.2),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https://storage.googleapis.com/xurya-app-files/odoo-cms/images/customer-logo/tyot47pejrphvxf95ni6o.png",
                    scale: 15,
                  ),
                  Text("1537292020",
                      style: GoogleFonts.poppins(
                          color: Colors.grey, fontSize: 10)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(nama,
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                  Text(noHp,
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 10))
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 3),
                child: Text("Pay at Hotel",
                    style:
                        GoogleFonts.poppins(color: Colors.blue, fontSize: 10)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(kamar,
                      style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 14,
                          fontWeight: FontWeight.w600)),
                  Container(
                      height: 30,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Color(0XFFD8FFCF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text("Check In",
                              style: GoogleFonts.poppins(
                                  color: Color(0XFF40CB5F),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800))))
                ],
              ),
            ],
          ),
        ));
  }
}

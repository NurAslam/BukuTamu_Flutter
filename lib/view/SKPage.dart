import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_restapi/view/register.dart';

class SyaratdanKetentuanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Syarat dan Ketentuan",
            style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
        elevation: 0,
        leading: MaterialButton(
          // onPressed: Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 40),
        child: Column(
          children: [
            text(
                "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor tincidunt risus dignissim pellentesque tortor, sed."),
            text(
                "2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor tincidunt risus dignissim pellentesque tortor, sed."),
            text(
                "3. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor tincidunt risus dignissim pellentesque tortor, sed."),
            text(
                "4. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dolor tincidunt risus dignissim pellentesque tortor, sed."),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              child: MaterialButton(
                highlightColor: Colors.amber,
                // Within the `FirstRoute` widget
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 0,
                child: Text("Terima",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                color: Color(0XFFCD9C2F),
                minWidth: 50,
                height: 50,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              width: double.infinity,
              child: MaterialButton(
                highlightColor: Colors.grey[400],
                disabledElevation: 0,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 0,
                child: Text("Batalkan",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                color: Colors.grey,
                minWidth: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget text(String t) {
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Text(
        t,
        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

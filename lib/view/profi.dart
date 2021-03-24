import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00486C),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Color(0XFF00486C),
        title: Text("My Profile",
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white,
            )),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://alfathhospitality.com/n_assets/assets/images/ALFATHLIGHT.png"))),
          ),
          //     Column(
          //       children: [
          //         Container(
          //           height: 900,
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.vertical(
          //               top: Radius.circular(30),
          //             ),
          //           ),
          //         ),
          //       ],
          //     )
          //   ],
          // ),
          // Stack(
          // children: [
          // CustomScrollView(
          //   slivers: [
          //     SliverAppBar(
          //       expandedHeight: 300,
          //       backgroundColor: Color(0XFF00486C),
          //       flexibleSpace: FlexibleSpaceBar(
          //         collapseMode: CollapseMode.parallax,
          //         background: Container(
          //           decoration: BoxDecoration(
          //             image: DecorationImage(
          //               image: NetworkImage(
          //                   "https://alfathhospitality.com/n_assets/assets/images/ALFATHLIGHT.png"),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //     SliverList(
          //       delegate: SliverChildListDelegate(
          //         [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            height: 580,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  child: Column(
                    children: [
                      TextFieldProfil(
                          icon: Icons.person,
                          hintText: "John Ricardo",
                          labelText: "Masukkan Nama"),
                      TextFieldProfil(
                          icon: Icons.email,
                          hintText: "example@gmail.com",
                          labelText: "Masukkan Email"),
                      TextFieldProfil(
                          icon: Icons.call,
                          hintText: "082xxxxxxx",
                          labelText: "Masukkan Nomor Telepon"),
                      TextFieldProfil(
                          icon: Icons.book_rounded,
                          hintText: "Malang",
                          labelText: "Domisili"),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Center(
                  child: Container(
                    width: double.infinity,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      elevation: 4,
                      child: Text("Sign In",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      color: Color(0XFFCD9C2F),
                      minWidth: 50,
                      height: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldProfil extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final String hintText;

  const TextFieldProfil({this.icon, this.hintText, this.labelText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            labelStyle:
                GoogleFonts.poppins(fontSize: 12, color: Colors.grey[600]),
            prefixIcon: Icon(
              icon,
              color: Color(0XFF00486C),
            ),
            border: UnderlineInputBorder(),
            labelText: labelText,
            hintStyle: GoogleFonts.poppins(fontSize: 14, color: Colors.grey)),
      ),
    );
  }
}

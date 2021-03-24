import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider_restapi/view/pembayaran.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  TextEditingController namaLengkapController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController noHpController = TextEditingController();

  TextEditingController alamatController = TextEditingController();

  // Radio Button
  String jk = "";

  void _pilihjk(String value) {
    setState(() {
      jk = value;
    });
  }

  // image
  File _image;
  final picker = ImagePicker();

  _imgFromGallery(ImageSource imageSource) async {
    PickedFile imageFile = await picker.getImage(source: imageSource);
    if (imageFile == null) return;
    setState(() {
      _image = File(imageFile.path);
    });
  }

  _imgFromCamera(ImageSource imageSource) async {
    PickedFile imageFile = await picker.getImage(source: imageSource);
    if (imageFile == null) return;
    setState(() {
      _image = File(imageFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Color(0XFFCD9C2F),
          elevation: 0,
          title: Text(
            "Register",
            style: GoogleFonts.poppins(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600)
          ),
          ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: ListView(
          children: [
            Text("DETAIL DATA DIRI",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500)),
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    namaLengkap(),
                    email(),
                    jenisKelamin(),
                    noHp(),
                    alamat(),
                    ambilKTP(),
                    tombolRegistrasi(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget namaLengkap() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: namaLengkapController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            labelText: "Nama Lengkap"),
        validator: (value) {
          if (value.isEmpty) {
            return 'Nama Lengkap tidak boleh Kosong';
          }
          return null;
        },
      ),
    );
  }

  Widget email() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            labelText: "Email",
            hintText: 'email@example.com'),
        validator: (value) {
          if (value.isEmpty) {
            return 'Email tidak boleh Kosong';
          }
          return null;
        },
      ),
    );
  }

  Widget jenisKelamin() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pilih Jenis Kelamin"),
          RadioListTile(
            dense: true,
            value: "L",
            contentPadding: EdgeInsets.zero,
            title: Text("Laki-Laki"),
            groupValue: jk,
            activeColor: Colors.blue,
            onChanged: (String val) {
              _pilihjk(val);
            },
          ),
          RadioListTile(
            value: "P",
            title: Text("Perempuan"),
            dense: true,
            contentPadding: EdgeInsets.zero,
            groupValue: jk,
            activeColor: Colors.blue,
            onChanged: (String val) {
              _pilihjk(val);
            },
          ),
        ],
      ),
    );
  }

  Widget noHp() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        controller: noHpController,
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
          labelText: "No Handphone",
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'No Hp tidak boleh Kosong';
          }
          return null;
        },
      ),
    );
  }

  Widget alamat() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: alamatController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(5.0)),
            labelText: "Alamat"),
        maxLines: 100,
        minLines: 2,
      ),
    );
  }

  Widget ambilKTP() {
    return Column(
      children: [
        Center(
            child: _image != null
                ? Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                        height: 500,
                        width: double.infinity,
                        child: Image.file(_image)),
                  )
                : Text("No Image Select")),
        ElevatedButton.icon(
            onPressed: () => _imgFromGallery(ImageSource.gallery),
            icon: Icon(Icons.image),
            label: Text("Gallery"))
      ],
    );
  }

  Widget tombolRegistrasi() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      child: MaterialButton(
        onPressed: () {
          if (_formKey.currentState.validate() == true) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PembayaranPage(),));
          }else{
            _formKey.currentState.validate();
          }
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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
    );
  }
}

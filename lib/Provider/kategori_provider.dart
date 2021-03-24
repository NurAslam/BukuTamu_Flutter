import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:provider_restapi/model/kategoriModel.dart';

class PropertyProvider extends ChangeNotifier {
  List<KategoriModel> _kategori;
  List<KategoriModel> get listKategori => _kategori;
  set listKategori(List<KategoriModel> val) {
    _kategori = val;
    ChangeNotifier();
  }

  String url = "";
  Future<List<KategoriModel>> fecthKategori() async {
    final response = await http.get("https://picsum.photos/v2/list");
    List res = jsonDecode(response.body);
    List<KategoriModel> data = [];
    
    for (var i = 0; i < res.length; i++) {
      var post = KategoriModel.fromJson(res[i]);
      data.add(post);
    }
    listKategori = data;
    return listKategori;

  }
}
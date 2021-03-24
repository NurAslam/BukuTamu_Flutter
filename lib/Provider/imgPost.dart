import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:provider_restapi/model/gambarModel.dart';
import 'package:http/http.dart' as http;

class ImagePost extends ChangeNotifier {
  List<ImageModel> _img;
  List<ImageModel> get listImage => _img;
  set listImage(List<ImageModel> val) {
    _img = val;
    notifyListeners();
  }

  String url = "https://jsonplaceholder.typicode.com/photos/";

  Future<List<ImageModel>> fetchImage() async {
    final response = await http.get("https://jsonplaceholder.typicode.com/photos/");
    List res = jsonDecode(response.body);
    List<ImageModel> data = [];

    for(var i = 0; i < res.length; i++) {
      var image = ImageModel.fromJson(res[i]);
      data.add(image);
    }
    listImage = data;
    return listImage;
  }
}

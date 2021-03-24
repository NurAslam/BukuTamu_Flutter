import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:provider_restapi/model/PostModel.dart';
import 'package:http/http.dart' as http;

class BlockPost extends ChangeNotifier {
  List<Post> _post;
  List<Post> get listPost => _post;

  set listPost(List<Post> val) {
    _post = val;
    notifyListeners();
  }

  Post _detail;
  Post get detailpost => _detail;

  set detailpost(Post val) {
    _detail = val;
    notifyListeners();
  }

  int _id = 0;
  int get idPost => _id;
  set idPost(int val) {
    if (val != 0) {
      _id = val;
    }
    notifyListeners();
  }

  String url = "https://jsonplaceholder.typicode.com/posts/";

  Future<List<Post>> fetchPost() async {
    // Penulisan variable berbeda response
    final response = await http.get(url);

    List res = jsonDecode(response.body);
    List<Post> data = [];

    for (var i = 0; i < res.length; i++) {
      var post = Post.fromJson(res[i]);
      data.add(post);
    }
    listPost = data;
    return listPost;
  }

  Future<Post> getDetail() async {
    final response = await http.get(url + _id.toString());
    // Penulisan lebih simple variable berbeda response
    detailpost = Post.fromJson(jsonDecode(response.body));
    return detailpost;
  }

  // Image Provider
  // https://picsum.photos/v2/list
}

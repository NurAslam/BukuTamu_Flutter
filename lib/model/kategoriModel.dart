// To parse this JSON data, do
//
//     final kategoriModel = kategoriModelFromJson(jsonString);

import 'dart:convert';

List<KategoriModel> kategoriModelFromJson(String str) => List<KategoriModel>.from(json.decode(str).map((x) => KategoriModel.fromJson(x)));

String kategoriModelToJson(List<KategoriModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class KategoriModel {
    KategoriModel({
        this.id,
        this.author,
        this.width,
        this.height,
        this.url,
        this.downloadUrl,
    });

    String id;
    String author;
    int width;
    int height;
    String url;
    String downloadUrl;

    factory KategoriModel.fromJson(Map<String, dynamic> json) => KategoriModel(
        id: json["id"],
        author: json["author"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        downloadUrl: json["download_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "author": author,
        "width": width,
        "height": height,
        "url": url,
        "download_url": downloadUrl,
    };
}

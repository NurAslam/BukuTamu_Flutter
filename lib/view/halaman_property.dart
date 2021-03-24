import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_restapi/Provider/imgPost.dart';

class KategoryPropertiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final ImagePost imagePost = Provider.of<ImagePost>(context);
    imagePost.fetchImage();
    print("data = ${imagePost.listImage}");

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title:
              Text("Properti Kategory", style: TextStyle(color: Colors.black)),
        ),
        body: imagePost.listImage != null
            ? ListView.builder(
                itemCount: imagePost.listImage.length,
                itemBuilder: (context, index) {
                  return listImageProperti(imagePost.listImage[index].url,
                      imagePost.listImage[index].title);
                })
            : Center(child: CircularProgressIndicator()));
  }

  Widget listImageProperti(kategori, judul) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 218,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 10, offset: Offset(0, 3))
                ],
                image: DecorationImage(
                    image: NetworkImage(kategori), fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(judul, style: TextStyle(fontSize: 24)),
          )
        ],
      ),
    );
  }
}

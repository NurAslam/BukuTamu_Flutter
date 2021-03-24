import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_restapi/Provider/imgPost.dart';

class ImageHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImagePost imagePost = Provider.of<ImagePost>(context);
    imagePost.fetchImage();
    print("data = ${imagePost.listImage}");

    return Scaffold(
        body: imagePost.listImage != null
            ? ListView.builder(
                itemCount: imagePost.listImage.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child:
                                  Image.network(imagePost.listImage[index].url),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(imagePost.listImage[index].title),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                })
            : Center(child: CircularProgressIndicator()));
  }
}

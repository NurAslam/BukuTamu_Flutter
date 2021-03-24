import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_restapi/Provider/BlockPost.dart';
import 'package:provider_restapi/view/detail.dart';
import 'package:provider_restapi/widget/cardPost.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BlockPost blockPost = Provider.of<BlockPost>(context);
    blockPost.fetchPost();
    return Scaffold(
        appBar: AppBar(title: Text("Post")),
        body: blockPost.listPost != null
            ? ListView.builder(
                itemCount: blockPost.listPost.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      blockPost.idPost = blockPost.listPost[index].id;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPost(
                                  id: blockPost.listPost[index].id)));
                    },
                    child: cardPost(blockPost.listPost[index].id,
                        blockPost.listPost[index].title),
                  );
                },
              )
            : Center(child: CircularProgressIndicator()));
  }
}

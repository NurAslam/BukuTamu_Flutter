import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_restapi/Provider/BlockPost.dart';
import 'package:provider_restapi/model/PostModel.dart';

class DetailPost extends StatelessWidget {
  final int id;

  const DetailPost({Key key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BlockPost blockPost = Provider.of<BlockPost>(context);
    blockPost.getDetail();
    Post post = blockPost.detailpost;

    return Scaffold(
      appBar: AppBar(
        title: post != null ? Text(post.title) : Text(" "),
      ),
      body: post != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    child: Text(
                      post.id.toString(),
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    post.title,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Text(
                  post.body,
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        color: Colors.amber,
                        child: Text("Prev"),
                        onPressed: () {
                          blockPost.idPost = post.id - 1;
                        },
                      ),
                      MaterialButton(
                        color: Colors.amber,
                        child: Text("Next"),
                        onPressed: () {
                          blockPost.idPost = post.id + 1;
                        },
                      ),
                    ],
                  ),
                )
              ],
            )
          : Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.amber,
              ),
            ),
    );
  }
}

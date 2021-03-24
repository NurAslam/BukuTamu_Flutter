import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Container(
            width:double.infinity / 3,
            height: 150,
            color: Colors.green, 
          ),
          Container(
            width:double.infinity / 3,
            height: 150,
            color: Colors.green, 
          ),
        ],
      )
    );
  }
}

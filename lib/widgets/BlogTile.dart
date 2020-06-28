import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BlogTile extends StatelessWidget {
  final imageUrl, title, description;

  BlogTile({this.imageUrl, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x10000000),
          offset: Offset(0, 2),
          blurRadius: 4,
          spreadRadius: 0,
        ),
      ]),
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Image.network(imageUrl)),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

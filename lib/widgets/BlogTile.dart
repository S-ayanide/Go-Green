import 'package:flutter/material.dart';
import 'package:go_green/widgets/article_view.dart';

class BlogTile extends StatelessWidget {
  final imageUrl, title, description, url;

  BlogTile({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
    @required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ArticleView(
                    blogUrl: url,
                  )),
        );
      },
      child: Container(
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
      ),
    );
  }
}

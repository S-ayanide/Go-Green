import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container outlineButton(final _width, final _height, BuildContext context) {
  return Container(
    width: _width * 0.7,
    height: _height * 0.08,
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(32),
    ),
    foregroundDecoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(30),
    ),
    child: InkWell(
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                top: _height * 0.015,
                bottom: _height * 0.015,
                left: _width * 0.2,
                right: _width * 0.1),
            child: Text(
              'Gift A Tree',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        ],
      ),
      onTap: () => launch('https://tree-nation.com/plant/offer'),
    ),
  );
}

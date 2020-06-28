import 'package:flutter/material.dart';

Container outlineButton(final _width, final _height) {
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
    child: Center(
      child: Text(
        'Gift A Tree',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
    ),
  );
}

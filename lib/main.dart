import 'package:flutter/material.dart';

const _imageUrl =
    "https://www.mpadeco.com/resize/500x500/zc/3/f/0/src/sites/mpadeco/files/products/218.png";
const _titleString = "I am rich";

Image _image = const Image(
  image: NetworkImage(_imageUrl),
);

Text _title = const Text(_titleString);

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.blueGrey,
    body: Center(child: _image),
    appBar: AppBar(
      backgroundColor: Colors.blueGrey[900],
      title: _title,
    ),
  )));
}

import 'package:flutter/material.dart';

const _imageUrl =
    "https://www.mpadeco.com/resize/500x500/zc/3/f/0/src/sites/mpadeco/files/products/218.png";
const _imageLocal = "images/diamond.png";
const _titleString = "I am rich";

Image _localImage = const Image(
  image: AssetImage(_imageLocal),
);

Image _networkImage = const Image(
  image: NetworkImage(_imageUrl),
);

Text _title = const Text(_titleString);

void main() {
  runApp(const IAmRichApp(useLocalImageProvider: true));
}

class IAmRichApp extends StatelessWidget {
  final bool useLocalImageProvider;

  const IAmRichApp({required this.useLocalImageProvider, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: useLocalImageProvider ? _localImage : _networkImage),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: _title,
      ),
    ));
  }
}

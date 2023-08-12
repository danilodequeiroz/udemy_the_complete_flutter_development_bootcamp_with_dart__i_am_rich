// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i_am_rich/main.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets(
      'given IAmRichApp when started then check appbar title and local image',
      (WidgetTester tester) async {
    await tester.pumpWidget(const IAmRichApp(
      useLocalImageProvider: true,
    ));

    expect(find.image(const AssetImage("images/diamond.png")), findsOneWidget);
    expect(find.text("I am Rich"), findsOneWidget);
  });

  testWidgets(
      'given IAmRichApp when started then check appbar title and network image',
      (WidgetTester tester) async {

        await mockNetworkImagesFor(() =>  tester.pumpWidget(const IAmRichApp(
      useLocalImageProvider: false,
    )));

    expect(find.image(const NetworkImage("https://www.mpadeco.com/resize/500x500/zc/3/f/0/src/sites/mpadeco/files/products/218.png")), findsOneWidget);
    expect(find.text("I am Rich"), findsOneWidget);
  });
}

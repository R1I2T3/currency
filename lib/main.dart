import 'package:currency/currency.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
// Type of widgets are stateless,stateFull,Inherited widgets

// States means to data how your  app should look like
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Currency(),
    );
  }
}

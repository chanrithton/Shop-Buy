import 'package:flutter/material.dart';
import 'package:fluttercourse/Home_shop.dart';
import 'package:fluttercourse/buying.dart';
//import 'package:fluttercourse/layout_Screen.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeShop(),
    );
  }
}

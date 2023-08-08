// ignore_for_file: file_names, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttercourse/buying.dart';
import 'package:get/get.dart';

class Mycard {
  final icon;
  final title;
  bool isActive = false;

  // make constructor
  Mycard(this.icon, this.title, this.isActive);
}

class HomeShop extends StatelessWidget {
  HomeShop({super.key});

  // make list
  List<Mycard> mycard = [
    Mycard(Icons.shopping_cart, 'Buying', true),
    Mycard(Icons.shop, 'Selling', false),
    Mycard(Icons.account_balance, 'Trades', false),
    Mycard(Icons.play_circle_outlined, 'Videos', false),
    Mycard(Icons.people_outline, 'Detail', false),
    Mycard(Icons.bookmark_border, 'Case Book', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        title: const Text(
          "Home Shop",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              "Choose your area",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: mycard
                        .map((e) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Buying()));
                              },
                              child: Card(
                                color: e.isActive ? Colors.deepPurple : null,
                                elevation: 8, // ស្នាមព្រាល
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      e.icon,
                                      size: 50,
                                      color: e.isActive
                                          ? Colors.white
                                          : Colors.deepPurple,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      e.title,
                                      style:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

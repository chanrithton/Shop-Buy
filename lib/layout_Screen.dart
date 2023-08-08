// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Layout Screen",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'image/photo.jpg',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Text(
                                "Oeschinen Lake Campground",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Text(
                              "Kandersteg, Switzerland",
                              style: TextStyle(color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _toggleFavorite();
                        },
                        icon: (_isFavorited
                            ? const Icon(Icons.star)
                            : const Icon(Icons.star_border)),
                        color: Colors.red,
                      ),
                      Container(
                        child: Row(
                          children: [Text('$_favoriteCount')],
                        ),
                      ),
                      // const Text("41")
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.call,
                          color: Colors.blue,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.near_me,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                            color: Colors.blue,
                            size: 30,
                          )),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Call",
                        style: TextStyle(fontSize: 18),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 58),
                        child: Text(
                          "Route",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Text(
                        "Share",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: const [
                  Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                    'Alps. Situated 1,578 meters above sea level, it is one of the '
                    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                    'half-hour walk through pastures and pine forest, leads you to the '
                    'lake, which warms to 20 degrees Celsius in the summer. Activities '
                    'enjoyed here include rowing, and riding the summer toboggan run.',
                    softWrap: true,
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

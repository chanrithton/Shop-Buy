// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Product {
  final image;
  final name;
  final price;

  // make constructor
  Product(this.image, this.name, this.price);
}

class Buying extends StatelessWidget {
  Buying({super.key});
  // make listview
  List products = [
    Product(
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc_DM1HVqFLsI3imtcqYm_LrPEUowJtsKZ6Q&usqp=CAU',
      'Camera',
      '2000\$',
    ),
    Product('https://www.ione.com.kh/wp-content/uploads/2022/09/1-16.jpg',
        'iWatch', '650\$'),
    Product(
        'https://kh.jbl.com/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dwb501cbb6/JBL_Go2_Hero_Midnight_Black-1605x1605px.png?sw=537&sfrm=png',
        'JBL Speaker',
        '70\$'),
    Product(
        'https://m.media-amazon.com/images/I/51SmVSwELmL._AC_UF350,350_QL80_.jpg',
        'Macbook',
        '1500\$'),
    Product('https://rootitsupport.com/userfiles/thumbs/x1502za-ej1247w.png',
        'ASUS', '800\$'),
    Product(
        'https://imagineonline.store/cdn/shop/products/MPV03HN_A_1.jpg?v=1662718728',
        'iPhone 14',
        '1200\$'),
    Product(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfsuIMM_21ngYTOjJ168RcqOD98qTJbnoeAQ&usqp=CAU',
        'iPhone 14 Pro Max',
        '1800\$'),
    Product('https://m.media-amazon.com/images/I/61nfuFmjL2L.jpg', 'iPhone X',
        '500\$'),
    Product(
        'https://www.techexchange.co.za/wp-content/uploads/2021/04/iPhone-7-plus-jet-black-Apple-iPhone-7-Plus-128GB-Black-CPO.png',
        'iPhone 7 Plus',
        '300\$'),
    Product(
        'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone11-black-2019?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1611169026000',
        'iPhone 11',
        '600\$'),
    Product(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPQ6zEfgYHillIZLGOGnEGrWMFjkpD5EAHUqHaVbjlhSN3CQ4F6_aK-1xr4Yl_Bh_Z7nM&usqp=CAU',
        'iPhone 12',
        '900\$'),
    Product(
        'https://www.excelestore.com.bd/public/uploads/all/F88kajzRL1D68oUVMjTNnfqmRu9sakYchSmZ8rTW.webp',
        'Samsung Galaxy S22 Ultra 5G',
        '470\$')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        title: const Text(
          "Buyings",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            //  color: Colors.green,
            child: ListView(
              scrollDirection: Axis.horizontal, // make item can scroll
              children: ['Featured item', 'Most item', 'Item', 'Etc....']
                  .map((e) => Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: OutlinedButton(
                          // like box
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                          child: Text(e),
                        ),
                      ))
                  .toList(),
            ),
          ),
          Column(
            children: products
                .map((e) => Container(
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            //  blurRadius: 10,
                            spreadRadius: 3,
                            offset: Offset(3, 4),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Image.network(
                            e.image,
                            fit: BoxFit.cover,
                            width: 55,
                            height: 100,
                          ),
                          title: Text(e.name),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(e.price.toString()),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 63,
                                      bottom: 0,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Image.network(
                                          'https://media.istockphoto.com/id/1296058958/vector/happy-young-woman-watching-into-rounded-frame-isolated-on-white-3d-vector-illustration.jpg?s=612x612&w=0&k=20&c=x9lmmoKVqxRro-G3S48IWIKQiykb2Yv1CkuiizDJ6gw=',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        left: 30,
                                        bottom: 0,
                                        child: CircleAvatar(
                                            child: Image.network(
                                          'https://as1.ftcdn.net/v2/jpg/03/14/80/18/1000_F_314801893_YduWwRHUT1JsRQ5oATqaBybGTnIgiZB6.jpg',
                                          fit: BoxFit.cover,
                                        ))),
                                    Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.blue,
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa69_HGc_i3MXKCPZzCfAjBZC4bXJsn0rS0Ufe6H-ctZz5FbIVaPkd1jCPTpKwPruIT3Q&usqp=CAU',
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              const Text('870 Viewers'),
                            ],
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/constants.dart';

// import 'package:flutter_shopping_app/src/screens/details/details_screen.dart';
List<String> myProducts = [
  "Акции",
  "Продукты",
  "Вода, напитки",
  "Красота и здоровье",
  "Товары для детей",
  "Бытовая химия и уборка",
  "Дом, авто, сад",
  "Товары для животных",
  "Алкоголь",
  "Помогать легко",
];
GridView buildCategoriesGridView(BuildContext context, List<dynamic> products) {
  var orientation = MediaQuery.of(context).orientation;
  products = ['Name of product 1'];
  return GridView.builder(
    itemCount: myProducts.length,
    // itemCount: products.length,
    shrinkWrap: true,
    padding: const EdgeInsets.symmetric(horizontal: spaceGrid),
    physics: const NeverScrollableScrollPhysics(),
    reverse: false,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3,
        // childAspectRatio: 1.2,
        mainAxisSpacing: spaceGrid,
        crossAxisSpacing: 20,
        mainAxisExtent: 140),
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () => {
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => ProductDetail(
          //         product: products[index],
          //       ),
          //     )),
        },
        child: gridCardItem(context, index),
        // child: gridCardItem(context, myProducts[index]),
        // child: gridCardItem(context, products[0]),
      );
    },
  );
}

// Card gridCardItem(context, item) {
Widget gridCardItem(context, index) {
  const String dom = "https://magnum.kz:1337/uploads/";
  final List<String> imagesCategories = [
    "Frame_525_d4b652f901.png",
    "Frame_534_63762b9d98.png",
    "Frame_514_51096e0946.png",
    "Frame_521_f9d0e8b651.png",
    "Frame_515_2298e550ef.png",
    "Frame_524_3780137a4e.png",
    "Frame_523_378beac49d.png",
    "Frame_516_0315791488.png",
    "Frame_518_4cc3f4b1e5.png",
    "Frame_520_cd6412451b.png",
  ];
  String im = (dom + imagesCategories[index].toString());

  String pr = (myProducts[index]);
  return Container(
    // elevation: 0,
    height: 300,
    // margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    // padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 134, 45, 185),
    ),
    child: GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => ProductDetail(
        //               product: item,
        //             )));
        Navigator.pushNamed(context, '/categoryList');
      },
      child: Hero(
        tag: index.toString(),
        child: Container(
          height: 200,
          // width: 200,
          // margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(im),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            pr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.left,
          ),
          // Padding(
          //   padding: EdgeInsets.all(10),
          //   child: Image.asset(
          //     'assets/images/product.jpg',
          //     fit: BoxFit.contain,
          //   ),
          // ),
        ),
      ),
    ),
  );
}

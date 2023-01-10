import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:magnum_go_duplicate/constants.dart';
import 'package:magnum_go_duplicate/screens/productList/productPage.dart';

import '../../models/product.dart';

List<ProductMagnum> myProducts = [
  ProductMagnum(
    id: 0,
    image: '',
    name: 'ЯЙЦО КАЗГЕР-КУС ХАЛАЛ КАТЕГОРИЯ ОТБОРНОЕ 30 ШТ ЛОТ',
    cost: '1509',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 1,
    image: '',
    name: 'Яйцо Qarqus отборное 15шт коррекс',
    cost: '739',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 2,
    image: '',
    name: 'Яйцо Казгер-Кус пищевое куриное премиум 20 шт',
    cost: '1009',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 3,
    image: '',
    name: 'Яйцо куриное Казгер-Кус халал отборное 10 шт',
    cost: '525',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 4,
    image: '',
    name: 'ЯЙЦО QARQUS ОТБОРНОЕ 30ШТ ЛОТ',
    cost: '1489',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 5,
    image: '',
    name: 'ЯЙЦО КАЗГЕР-КУС ПИЩЕОВОЕ КУРИНОЕ ПРЕМИУМ 10ШТ КОРРЕКС',
    cost: '525',
    category: 'яйцо',
  ),
  ProductMagnum(
    id: 6,
    image: '',
    name: 'ЯЙЦО ОТ ФЕРМЕРА ПЕРЕПЕЛИНОЕ 18ШТ КОРРЕКС',
    cost: '919',
    category: 'яйцо',
  ),
  // moloko
  ProductMagnum(
    id: 7,
    image: '',
    name: 'МОЛОКО БАБУШКИН ЛУЖОК 6,0% 0,9МЛ TWA',
    cost: '479',
    category: 'молоко',
  ),
  ProductMagnum(
    id: 8,
    image: '',
    name: 'Молоко Петропавлское 6% 0,9 л',
    cost: '519',
    category: 'молоко',
    oldCost: '919',
  ),
  ProductMagnum(
    id: 9,
    image: '',
    name: 'Молоко Умут и Ко пастеризованное 3,2% 1 л',
    cost: '455',
    category: 'молоко',
    oldCost: '515',
  ),
  ProductMagnum(
    id: 10,
    image: '',
    name: 'ИРИМШИК УМУТ КГ',
    cost: '3729',
    category: 'нац молоч',
    type: 'кг',
  ),
];
GridView buildProductsGridView(BuildContext context, List<dynamic> products) {
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
        crossAxisSpacing: 10,
        mainAxisExtent: 260),
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
    "Frame_518_4cc3f4b1e5.png",
    "Frame_520_cd6412451b.png",
  ];
  String im = (dom + imagesCategories[index].toString());

  ProductMagnum pr = (myProducts[index]);
  bool isScidka = pr.oldCost != '0';
  void _showModal(context) {
    showModalBottomSheet(
      context: context,
      // backgroundColor: Color(),
      isScrollControlled: true,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height - 0,
        margin: EdgeInsets.symmetric(horizontal: 0),
        // padding: EdgeInsets.symmetric(horizontal: 8),
        decoration: const BoxDecoration(
          // color: Colors.red,
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        // child: SingleChildScrollView(
        child: ProductPage(),
        // ),
      ),
    );
  }

  return Container(
    height: 270,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade200),
      borderRadius: BorderRadius.circular(16),
    ),
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => ProductDetail(
        //               product: item,
        //             )));
        // Navigator.pushNamed(context, '/categoryList');
        _showModal(context);
      },
      child: Hero(
        tag: index.toString(),
        child: GestureDetector(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(im),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                    child: Text(
                      pr.name,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '1${pr.type}/',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  isScidka ? '${pr.oldCost} ₸' : '${pr.cost} ₸',
                                  style: TextStyle(
                                    color: Colors.black,
                                    decoration: isScidka
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                if (isScidka)
                                  Text(
                                    ' ${pr.cost} ₸',
                                    style: const TextStyle(
                                      color: appTitleColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                              ],
                            ),
                            Text(
                              '${pr.cost} ₸',
                              style: TextStyle(
                                color: isScidka ? appTitleColor : Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 209, 5, 66),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: ImageIcon(
                          AssetImage('assets/iconImages/trolley.png'),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: (() {}),
                child: Container(
                  margin: EdgeInsets.all(8),
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Color.fromARGB(255, 155, 153, 153),
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

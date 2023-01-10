import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/models/product.dart';

import '../../constants.dart';

ProductMagnum pr = ProductMagnum(
  id: 9,
  image: '',
  name: 'ЯЙЦО КАЗГЕР-КУС ПИЩЕОВОЕ КУРИНОЕ ПРЕМИУМ 10ШТ КОРРЕКС',
  cost: '455',
  category: 'молоко',
  oldCost: '515',
);

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isScidka = pr.oldCost != '0';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: 300,
              padding: EdgeInsets.only(
                bottom: 50,
                top: 30,
              ),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(
                color: Colors.red,
                // image: DecorationImage(
                //   image: NetworkImage(
                //     'https://magnum.kz:1337/uploads/Frame_523_378beac49d.png',
                //   ),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: Image.network(
                'https://magnum.kz:1337/uploads/Frame_523_378beac49d.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 110,
              child: Text(
                pr.name,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              height: 68,
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '1${pr.type}/',
                            style: TextStyle(
                              fontSize: 16,
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
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          if (isScidka)
                            Text(
                              ' ${pr.cost} ₸',
                              style: const TextStyle(
                                color: appTitleColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ],
                      ),
                      Text(
                        '${pr.cost} ₸',
                        style: TextStyle(
                          color: isScidka ? appTitleColor : Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.ios_share,
                        size: 25,
                        color: iconColor1,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_outline,
                        size: 25,
                        color: iconColor1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              // height: 5,
              thickness: 2.0,
              color: Colors.grey.shade200,
            ),
            Container(
              height: 20,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: const Text(
                'Описание',
                style: TextStyle(
                  color: iconColor1,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 110,
              child: Text(
                pr.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(child: Container()),
            Container(
              height: 70,
              color: appTitleColor,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
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
                              '1${pr.type}/${pr.cost} ₸',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${pr.cost} ₸',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'В корзину',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: ImageIcon(
                          AssetImage('assets/iconImages/trolley.png'),
                          color: appTitleColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

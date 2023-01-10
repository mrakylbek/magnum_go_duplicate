import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryList.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryTops.dart';

import '../../widgets/searchBox.dart';
import '../home/carousel.dart';

class CategoryBodyPage extends StatefulWidget {
  const CategoryBodyPage({super.key});

  @override
  State<CategoryBodyPage> createState() => _CategoryBodyPageState();
}

class _CategoryBodyPageState extends State<CategoryBodyPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SearchBox(onChanged: (value) {
            print('Searching for..$value');
          }),
          SizedBox(
            height: 14,
          ),
          CategoryTops(),
          // Categories(categories: categories),
          // AddressBody(),
          // CarouselBody(),
          // Flexible(
          //     fit: FlexFit.loose,
          //     child: buildProductGridView(context, products)),
          // Upakui(),
          CategoryList(),
        ],
      ),
    );
  }
}

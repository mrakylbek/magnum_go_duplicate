import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/home/addressBody.dart';
import 'package:magnum_go_duplicate/screens/home/carousel.dart';
import 'package:magnum_go_duplicate/screens/home/upakui.dart';

import '../../widgets/searchBox.dart';
import 'categoriesGridView.dart';
// import 'package:flutter_shopping_app/src/components/search_box.dart';
// import 'package:flutter_shopping_app/src/screens/home/components/_product_category.dart';
// import 'package:flutter_shopping_app/src/screens/home/components/_product_grid_builder.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    required this.categories,
    required this.products,
  }) : super();

  final List categories;
  final List products;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SearchBox(onChanged: (value) {
            print('Searching for..$value');
          }),
          // Categories(categories: categories),
          AddressBody(),
          CarouselBody(),
          Flexible(
              fit: FlexFit.loose,
              child: buildCategoriesGridView(context, widget.products)),
          Upakui(),
        ],
      ),
    );
    // return CustomScrollView(
    //   slivers: [
    //     SliverList(
    //       delegate: SliverChildListDelegate(
    //         [
    //           SearchBox(onChanged: (value) {
    //             print('Searching for..$value');
    //           }),
    //         ],
    //       ),
    //     ),
    //     SliverList(
    //       delegate: SliverChildListDelegate(
    //         [
    //           AddressBody(),
    //         ],
    //       ),
    //     ),
    //     SliverGrid(
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 2,
    //       ),
    //       delegate: SliverChildListDelegate(
    //         [
    //           buildProductGridView(context, products),
    //         ],
    //       ),
    //     ),
    //     // Categories(categories: categories),
    //   ],
    // );
  }
}

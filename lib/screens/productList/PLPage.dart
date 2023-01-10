import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryList.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryTops.dart';
import 'package:magnum_go_duplicate/screens/productList/filterBody.dart';
import 'package:magnum_go_duplicate/screens/productList/productsGridView.dart';

import '../../widgets/searchBox.dart';
import 'categoriesBody.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  // ProductListPage({required this.categories}) : super();
  // List<String> categories;

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

List<String> categories = [
  'Shirts',
  'Top',
  'Sneakers',
  'Electronics',
  'Jewellery'
];

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // SearchBox(onChanged: (value) {
            //   print('Searching for..$value');
            // }),
            // const SizedBox(
            //   height: 14,
            // ),
            Categories(
              categories: categories,
            ),
            FilterBody(),
            buildProductsGridView(context, <dynamic>[]),
          ],
        ),
      ),
    );
  }
}

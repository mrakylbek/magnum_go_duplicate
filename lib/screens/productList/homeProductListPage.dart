import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryBodyPage.dart';
import 'package:magnum_go_duplicate/screens/productList/PLPage.dart';
import 'package:magnum_go_duplicate/screens/productList/productListAppBar.dart';

import '../home/bottomNavigationBar.dart';

class HomeProductListPage extends StatefulWidget {
  const HomeProductListPage({super.key});

  // HomeProductListPage({required this.categories}) : super();
  // List<String> categories;

  @override
  State<HomeProductListPage> createState() => _HomeProductListPageState();
}

class _HomeProductListPageState extends State<HomeProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      // backgroundColor: sBackgroundColor,
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 130, 218, 58),
      appBar: productListAppBar(context),
      body:
          // Padding(
          //   padding: EdgeInsets.symmetric(vertical: 5),
          // child:
          ProductListPage(),
      // ),
      bottomNavigationBar: BottomNavBar(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}

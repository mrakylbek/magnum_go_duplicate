import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryAppBar.dart';
import 'package:magnum_go_duplicate/screens/categoryPage/categoryBodyPage.dart';

import '../home/bottomNavigationBar.dart';

class HomeCategory extends StatefulWidget {
  const HomeCategory({super.key});

  @override
  State<HomeCategory> createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      // backgroundColor: sBackgroundColor,
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 130, 218, 58),
      appBar: categoryAppBar(context),
      body:
          //  Padding(
          //   padding: EdgeInsets.symmetric(vertical: 5),
          //   child:
          CategoryBodyPage(),
      // ),
      bottomNavigationBar: BottomNavBar(),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}

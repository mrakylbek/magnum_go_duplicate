import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:magnum_go_duplicate/constants.dart';
import 'package:magnum_go_duplicate/screens/home/bottomNavigationBar.dart';
// import 'package:flutter_shopping_app/apis.dart';

import 'homeAppBar.dart';
import 'homeBody.dart';

class HomePage extends StatefulWidget {
  // HomePage(key) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var fakeProducts = ['qwerty'];
  List categories = ['Shirts', 'Top', 'Sneakers', 'Electronics', 'Jewellery'];
  var subscription;

  @override
  void initState() {
    // subscription = Connectivity()
    //     .onConnectivityChanged
    //     .listen((ConnectivityResult result) {
    //   // Got a new connectivity status!
    //   _loadData();
    // });

    // _loadData();
    super.initState();
  }

  // void _loadData() async {
  //   getCategories().then((items) {
  //     setState(() {
  //       categories = items;
  //       categories.insert(0, "ALL");
  //     });
  //   });

  //   fetchAllProducts().then((items) {
  //     setState(() {
  //       fakeProducts = items;
  //     });
  //   });
  // }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      // backgroundColor: sBackgroundColor,
      backgroundColor: Colors.white,
      // backgroundColor: Color.fromARGB(255, 130, 218, 58),
      appBar: homeActionBar(context),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: fakeProducts.length == 0
            ? Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.indigo,
                  strokeWidth: 1,
                ),
              )
            : HomeBody(
                categories: categories,
                products: fakeProducts,
              ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

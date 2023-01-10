import 'package:flutter/material.dart';
// import 'package:magnum_go_duplicate/constants.dart';
// import 'package:magnum_go_duplicate/screens/favorite/favoriteNotLogin.dart';
import 'package:magnum_go_duplicate/screens/favorite/homeFavorite.dart';
import 'package:magnum_go_duplicate/screens/home/homePage.dart';
import 'package:magnum_go_duplicate/screens/basket/homeBasket.dart';
import 'package:magnum_go_duplicate/screens/login/homeLogin.dart';
import 'package:magnum_go_duplicate/screens/myOrders/homeMyOrders.dart';
import 'package:magnum_go_duplicate/screens/productList/homeProductListPage.dart';
import 'package:magnum_go_duplicate/screens/profile/homeProfile.dart';

import 'screens/categoryPage/homeCategory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magnum Go',
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        '/categoryList': (BuildContext context) => HomeCategory(),
        '/productList': (context) => HomeProductListPage(),
        '/basket': (context) => HomeBasket(),
        '/favorite': (context) => HomeFavorite(),
        '/myOrders': (context) => HomeMyOrders(),
        '/profile': (context) => HomeProfile(),
        '/login': (context) => HomeLogin(),
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      // home: HomeCategory(),
      // home: HomePage(),
    );
  }
}

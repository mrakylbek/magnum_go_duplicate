import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/favorite/favoriteNotLogin.dart';
import 'package:magnum_go_duplicate/screens/login/loginPage.dart';
import 'package:magnum_go_duplicate/screens/myOrders/myOrdersNone.dart';
import 'package:magnum_go_duplicate/screens/profile/profileNoLogin.dart';

import '../../widgets/appBar.dart';
import '../home/bottomNavigationBar.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      // appBar: appBar(context, ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        elevation: 0,
        title: const Text(
          'Войти / Зарегистрироваться',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: LoginPage(),
    );
    ;
  }
}

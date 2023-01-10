import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';
// import '../../cart/cart_screen.dart';
// import '../../login/login_screen.dart';
// import '../../notification/notification.dart';

AppBar homeActionBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 70.0,
        child: Image.asset(
          'images/home_icon.png',
          fit: BoxFit.contain,
        ),
      ),
      title: const Text(
        'Supermarket',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: appTitleColor),
      ),
    ),
    centerTitle: false,
  );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

AppBar categoryAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: BackButton(color: appTitleColor),
    title:
        // ListTile(
        // contentPadding: EdgeInsets.zero,
        // leading: Container(
        //   height: 70.0,
        //   child: Image.asset(
        //     'images/home_icon.png',
        //     fit: BoxFit.contain,
        //   ),
        // ),
        // title:
        const Text(
      'Продукты',
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    // ),
    centerTitle: false,
  );
}

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

AppBar productListAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    // leading: Icon(
    //   Icons.arrow_back,
    //   size: 20,
    //   color: appTitleColor,
    // ),
    leading: BackButton(color: appTitleColor),
    leadingWidth: 30,
    toolbarHeight: 40,
    actions: [
      Container(
        margin: EdgeInsets.only(right: 8),
        child: Icon(
          Icons.search,
          color: appTitleColor,
          size: 25,
        ),
      )
    ],
    title: Container(
      alignment: Alignment.topLeft,
      child: const Text(
        'Овощи, фрукты, ягоды, зелень, грибы',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.w500, color: Colors.black),
      ),
    ),
    // ),
    centerTitle: false,
  );
}

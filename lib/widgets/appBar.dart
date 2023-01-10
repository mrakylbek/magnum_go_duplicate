// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

AppBar appBar(context, String text) {
  return AppBar(
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    toolbarHeight: 60,
    elevation: 0,
    title: Container(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
            fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
    centerTitle: false,
  );
}

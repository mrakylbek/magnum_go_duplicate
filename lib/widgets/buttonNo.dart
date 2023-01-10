import 'package:flutter/material.dart';

import '../constants.dart';

Widget getButton(String name) {
  return Container(
    height: 50,
    margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
    padding: const EdgeInsets.only(bottom: 5),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: appTitleColor),
    alignment: Alignment.center,
    child: InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        child: Text(
          name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

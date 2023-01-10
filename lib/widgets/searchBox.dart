import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/constants.dart';
// import 'package:flutter_shopping_app/src/screens/home/components/camera_app.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    required this.onChanged,
  }) : super();

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 0,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 239, 239),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        textAlignVertical: TextAlignVertical.bottom,
        onChanged: onChanged,
        style: TextStyle(color: kTextLightColor),
        cursorColor: kTextLightColor,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Поиск по каталогу',
          hintStyle: TextStyle(color: kTextLightColor),
          prefixIcon: Icon(
            CupertinoIcons.search,
            color: kTextLightColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../constants.dart';

class Categories extends StatefulWidget {
  Categories({required this.categories}) : super();

  final List<String> categories;

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  // By default our first item will be selected
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child:
          // Padding(
          // padding: const EdgeInsets.symmetric(horizontal: 20.0),
          // child:
          Container(
        // width: 100,
        // height: 30,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          // color: Colors.blue.shade50,
          color:
              selectedIndex == index ? Colors.blue.shade50 : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        // crossAxisAlignment: CrossAxisAlignment.start,
        // children: <Widget>[
        child: Text(
          widget.categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            wordSpacing: 1,
            color: Colors.black,
            // color: selectedIndex == index ? Colors.indigo : kTextLightColor,
          ),
        ),
        // Container(
        //   margin: EdgeInsets.only(top: 20.0 / 4), //top padding 5
        //   height: 2,
        //   width: 40,
        //   color:
        //       selectedIndex == index ? Colors.indigo : Colors.transparent,
        // )
        // ],
      ),
      // ),
    );
  }
}

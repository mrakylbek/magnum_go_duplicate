import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../constants.dart';

Widget filterBody() {
  return Container();
}
// import 'package:flutter_shopping_app/src/screens/home/components/camera_app.dart';

class FilterBody extends StatefulWidget {
  const FilterBody(
      {
      // required this.onChanged,
      super.key});

  // final ValueChanged onChanged;

  @override
  State<FilterBody> createState() => _FilterBodyState();
}

class _FilterBodyState extends State<FilterBody> {
  bool isFiltered = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      // padding: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 239, 239),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 30,
                  child: ImageIcon(
                    AssetImage('assets/iconImages/option.png'),
                    color: Colors.black,
                    size: 20,
                  ),
                ),
                Flexible(
                  child: const Text(
                    'Фильтр',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
                if (isFiltered)
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.topLeft,
                    child: const Icon(
                      Icons.noise_control_off,
                      color: Colors.red,
                      size: 15,
                    ),
                  )
              ],
            ),
          ),
          Flexible(
            flex: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  width: 30,
                  child: Icon(
                    Icons.swap_vert,
                    size: 20,
                  ),
                  // ImageIcon(
                  //   AssetImage('assets/iconImages/option.png'),
                  //   color: Colors.black,
                  //   size: 20,
                  // ),
                ),
                Flexible(
                  child: Text(
                    'По популярности',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          )
          // Container(
          //   height: 40,
          //   alignment: Alignment.centerRight,
          //   margin: EdgeInsets.symmetric(horizontal: 8),
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 0,
          //     vertical: 0,
          //   ),
          //   decoration: BoxDecoration(
          //     color: Color.fromARGB(255, 240, 239, 239),
          //     borderRadius: BorderRadius.circular(8),
          //   ),
          //   child: TextField(
          //     textCapitalization: TextCapitalization.words,
          //     textAlignVertical: TextAlignVertical.bottom,
          //     onChanged: widget.onChanged,
          //     style: TextStyle(color: kTextLightColor),
          //     cursorColor: kTextLightColor,
          //     decoration: InputDecoration(
          //       enabledBorder: InputBorder.none,
          //       focusedBorder: InputBorder.none,
          //       hintText: 'Поиск по каталогу',
          //       hintStyle: TextStyle(color: kTextLightColor),
          //       prefixIcon: Icon(
          //         CupertinoIcons.search,
          //         color: kTextLightColor,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

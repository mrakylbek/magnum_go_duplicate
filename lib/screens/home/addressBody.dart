import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import '../../constants.dart';

class AddressBody extends StatefulWidget {
  const AddressBody({super.key});

  @override
  State<AddressBody> createState() => _AddressBodyState();
}

class _AddressBodyState extends State<AddressBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    'Алматы, улица Прокофьева, кв 47, подьезд 1, этаж 6',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: kTextLightColor,
                    ),
                  ),
                ),
                Container(
                  // margin: const EdgeInsets.only(bottom: 3),
                  child: const Text(
                    'Адрес доставки влияет на ассортимент',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14,
                      color: appTitleColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const SizedBox(
            child: Icon(
              CupertinoIcons.right_chevron,
              color: kTextLightColor,
            ),
          ),
        ],
      ),
    );
  }
}

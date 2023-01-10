import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selected,
      backgroundColor: Colors.white,
      iconSize: 24,
      selectedFontSize: 12,
      unselectedFontSize: 10,
      selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
      unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700, overflow: TextOverflow.ellipsis),
      selectedItemColor: appTitleColor,
      unselectedItemColor: kTextLightColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _selected = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Каталог',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time_sharp),
          label: 'Мои заказы',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Избранное',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          label: 'Профиль',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_outlined),
          label: 'Корзина',
        ),
      ],
    );
  }
}

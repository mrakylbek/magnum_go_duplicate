import 'package:flutter/material.dart';

import '../../widgets/appBar.dart';
import '../home/bottomNavigationBar.dart';
import 'basketNoProduct.dart';

class HomeBasket extends StatefulWidget {
  const HomeBasket({super.key});

  @override
  State<HomeBasket> createState() => _HomeBasketState();
}

class _HomeBasketState extends State<HomeBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Корзина'),
      body: const BasketNoProduct(),
      bottomNavigationBar: BottomNavBar(),
    );
    ;
  }
}

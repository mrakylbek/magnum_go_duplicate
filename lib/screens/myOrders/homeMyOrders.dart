import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/favorite/favoriteNotLogin.dart';
import 'package:magnum_go_duplicate/screens/myOrders/myOrdersNone.dart';

import '../../widgets/appBar.dart';
import '../home/bottomNavigationBar.dart';

class HomeMyOrders extends StatefulWidget {
  const HomeMyOrders({super.key});

  @override
  State<HomeMyOrders> createState() => _HomeMyOrdersState();
}

class _HomeMyOrdersState extends State<HomeMyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Мои заказы'),
      body: MyOrdersNone(),
      bottomNavigationBar: BottomNavBar(),
    );
    ;
  }
}

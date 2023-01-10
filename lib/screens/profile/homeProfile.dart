import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/favorite/favoriteNotLogin.dart';
import 'package:magnum_go_duplicate/screens/myOrders/myOrdersNone.dart';
import 'package:magnum_go_duplicate/screens/profile/profileNoLogin.dart';

import '../../widgets/appBar.dart';
import '../home/bottomNavigationBar.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({super.key});

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Профиль'),
      body: ProfileNoLogin(),
      bottomNavigationBar: BottomNavBar(),
    );
    ;
  }
}

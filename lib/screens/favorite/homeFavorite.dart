import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/screens/favorite/favoriteNotLogin.dart';

import '../../widgets/appBar.dart';
import '../home/bottomNavigationBar.dart';

class HomeFavorite extends StatefulWidget {
  const HomeFavorite({super.key});

  @override
  State<HomeFavorite> createState() => _HomeFavoriteState();
}

class _HomeFavoriteState extends State<HomeFavorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: null,
      backgroundColor: Colors.white,
      appBar: appBar(context, 'Избранное'),
      body: const FavoriteNotLogin(),
      bottomNavigationBar: BottomNavBar(),
    );
    ;
  }
}

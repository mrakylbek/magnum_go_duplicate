import 'package:flutter/material.dart';

class Upakui extends StatefulWidget {
  const Upakui({super.key});

  @override
  State<Upakui> createState() => _UpakuiState();
}

class _UpakuiState extends State<Upakui> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: NetworkImage(
                "https://wallpaperaccess.com/full/8405169.jpg",
              ),
              fit: BoxFit.cover)),
      // child: Image.network(
      //   item,
      //   fit: BoxFit.cover,
      // ),
    );
  }
}

import 'package:flutter/material.dart';

class CategoryTops extends StatefulWidget {
  const CategoryTops({super.key});

  @override
  State<CategoryTops> createState() => _CategoryTopsState();
}

class _CategoryTopsState extends State<CategoryTops> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 130,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Colors.green[700],
              ),
              child: Image.asset(
                'assets/images/catTop${index + 1}.png',
                fit: BoxFit.cover,
                // fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

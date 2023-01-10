import 'package:flutter/material.dart';
import '../../constants.dart';

import '../../widgets/buttonNo.dart';
import '../../widgets/searchBox.dart';

class MyOrdersNone extends StatefulWidget {
  const MyOrdersNone({super.key});

  @override
  State<MyOrdersNone> createState() => _MyOrdersNoneState();
}

String title = 'Вы пока ничего не купили';

String subtitle = 'Воспользуйтесь поиском, чтобы найти все, что нужно,'
    'или перейдите в каталог.';
// String subtitle2 = 'Мы бережно соберем, упакуем ваш заказ'
//     ' и наши вежливые курьеры доставят его в удобное для вас место и '
//     'время.';
// String subtitle3 = 'Минимальная сумма заказа - 4000 ₸.\n'
//     'Бесплатная доставка от - 6000 ₸.';

Container getCont(String text, bool isBold) {
  return Container(
    margin: EdgeInsets.only(top: isBold ? 20 : 5),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    alignment: Alignment.topLeft,
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          fontSize: isBold ? 28 : 18,
          fontWeight: isBold ? FontWeight.bold : FontWeight.w500),
    ),
  );
}

class _MyOrdersNoneState extends State<MyOrdersNone> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            getCont(title, true),
            getCont(subtitle, false),
            getButton('Перейти в каталог'),
          ],
        ),
      ),
    );
  }
}

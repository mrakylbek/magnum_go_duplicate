import 'package:flutter/material.dart';
import '../../constants.dart';

import '../../widgets/buttonNo.dart';
import '../../widgets/searchBox.dart';

class BasketNoProduct extends StatefulWidget {
  const BasketNoProduct({super.key});

  @override
  State<BasketNoProduct> createState() => _BasketNoProductState();
}

String title = 'В корзине пока пусто';

String subtitle = 'Воспользуйтесь поиском, чтобы найти все, что нужно,'
    'или перейдите в каталог.';
String subtitle2 = 'Мы бережно соберем, упакуем ваш заказ'
    ' и наши вежливые курьеры доставят его в удобное для вас место и '
    'время.';
String subtitle3 = 'Минимальная сумма заказа - 4000 ₸.\n'
    'Бесплатная доставка от - 6000 ₸.';

Container getCont(String text) {
  return Container(
    margin: const EdgeInsets.only(top: 18),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    alignment: Alignment.topLeft,
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    ),
  );
}

class _BasketNoProductState extends State<BasketNoProduct> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(
              height: 18,
            ),
            SearchBox(onChanged: (value) {
              print('Searching for..$value');
            }),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            getCont(subtitle),
            getCont(subtitle2),
            getCont(subtitle3),
            getButton('Перейти в каталог'),
          ],
        ),
      ),
    );
  }
}

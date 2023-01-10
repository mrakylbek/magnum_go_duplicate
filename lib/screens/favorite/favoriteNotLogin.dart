import 'package:flutter/material.dart';
import '../../constants.dart';

import '../../widgets/buttonNo.dart';
import '../../widgets/searchBox.dart';

class FavoriteNotLogin extends StatefulWidget {
  const FavoriteNotLogin({super.key});

  @override
  State<FavoriteNotLogin> createState() => _FavoriteNotLoginState();
}

// String title = 'В корзине пока пусто';

String subtitle =
    'Войдите или зарегистрируйтесь, чтобы увидеть избранные товары.';
// String subtitle2 = 'Мы бережно соберем, упакуем ваш заказ'
//     ' и наши вежливые курьеры доставят его в удобное для вас место и '
//     'время.';
// String subtitle3 = 'Минимальная сумма заказа - 4000 ₸.\n'
//     'Бесплатная доставка от - 6000 ₸.';

Container getCont(String text) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
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

class _FavoriteNotLoginState extends State<FavoriteNotLogin> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            getCont(subtitle),
            getButton('Войти / Зарегистрироваться'),
          ],
        ),
      ),
    );
  }
}

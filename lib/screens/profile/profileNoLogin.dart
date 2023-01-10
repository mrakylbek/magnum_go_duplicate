import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:magnum_go_duplicate/constants.dart';
import 'package:magnum_go_duplicate/screens/profile/starWidget.dart';

import '../../widgets/buttonNo.dart';

class ProfileNoLogin extends StatefulWidget {
  const ProfileNoLogin({super.key});
  @override
  State<ProfileNoLogin> createState() => _ProfileNoLoginState();
}

// String title = 'Вы пока ничего не купили';

double sheight = 0.6;
String subtitle = 'Войдите или зарегистрируйтесь, чтобы видеть'
    ' историю заказов, пользоваться бонусными '
    'баллами и многое другое.';

String subtitle2 = 'Мы проконсультируем вас по работе'
    ' приложения, оформлению заказа и  '
    'любым возникшим вопросам.';

String smAA1 = 'Версия 4.0.7 (100217)';
String smAA2 = '\u00a9 2020 - 2021';
String smAA3 = 'Magnum E-commerce Kazakhstan';
// String subtitle2 = 'Мы бережно соберем, упакуем ваш заказ'
//     ' и наши вежливые курьеры доставят его в удобное для вас место и '
//     'время.';
// String subtitle3 = 'Минимальная сумма заказа - 4000 ₸.\n'
//     'Бесплатная доставка от - 6000 ₸.';

Container getCont(String text) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    alignment: Alignment.topLeft,
    child: Text(
      text,
      // maxLines: 1,
      // overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    ),
  );
}

Container getTitle(String text) {
  return Container(
    // margin: EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    alignment: Alignment.topLeft,
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget getMesButton(String text, Icon icon, BuildContext context) {
  return InkWell(
    onTap: () {},
    child: Container(
      height: 55,
      width: (MediaQuery.of(context).size.width / 2) - 15,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: icon,
          ),
          Flexible(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getDiv() {
  return Divider(
    thickness: 2.0,
    color: Colors.grey.shade200,
  );
}

Widget getTap(String text, Icon icon, BuildContext context) {
  return Container(
    height: 45,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: icon,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  );
}

void _showModalPodderzhka(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => Container(
      height: 470,
      // margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        // color: Colors.red,
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      // child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.centerLeft,
                child: getTitle('Поддержка'),
              ),
              IconButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                icon: const Icon(
                  Icons.close,
                  color: appTitleColor,
                  size: 25,
                ),
              )
            ],
          ),
          getCont(subtitle2),
          getButton('7772'),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: getTitle('Напишите нам'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              getMesButton(
                'Telegram',
                Icon(
                  Icons.telegram_outlined,
                  color: Colors.blue,
                  size: 30,
                ),
                context,
              ),
              getMesButton(
                'go@e - magnum.kz',
                Icon(
                  CupertinoIcons.envelope_circle_fill,
                  color: STextLightColor,
                  size: 30,
                ),
                context,
              ),
            ],
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 50, left: 10),
            child: Text(
              'Публичная оферта',
              style: TextStyle(
                fontSize: 18,
                color: appTitleColor,
              ),
            ),
          ),
        ],
      ),
      // ),
    ),
  );
}

class _ProfileNoLoginState extends State<ProfileNoLogin> {
  void _showModalAboutApp(context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      // constraints: BoxConstraints(minHeight: 400),
      // constraints: BoxConstraints(minHeight: ),
      builder: (context) =>
          // FractionallySizedBox(
          //   heightFactor: sheight,
          //   child:
          SingleChildScrollView(
        child: Container(
          // height: 400,
          // padding: EdgeInsets.symmetric(horizontal: 0),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerLeft,
                      child: getTitle('О приложении'),
                    ),
                    IconButton(
                      onPressed: (() {
                        Navigator.of(context).pop();
                      }),
                      icon: const Icon(
                        Icons.close,
                        color: appTitleColor,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 120,
                    child: Image.asset('assets/images/home_icon.png'),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        getCont(smAA1),
                        getCont(smAA2),
                        getCont(smAA3),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Насколько вам нравиться наше приложение?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              StarRating(),
            ],
          ),
          // ),
        ),
      ),
      // ),
    );
  }

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
            getDiv(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showModalPodderzhka(context);
                    },
                    child: getTap(
                      'Служба поддержки',
                      Icon(
                        CupertinoIcons.bubble_left_bubble_right,
                        size: 25,
                      ),
                      context,
                    ),
                  ),
                  getDiv(),
                  GestureDetector(
                    onTap: () {
                      _showModalPodderzhka(context);
                    },
                    child: getTap(
                      'Вопросы и ответы',
                      Icon(
                        CupertinoIcons.question_circle,
                        size: 25,
                      ),
                      context,
                    ),
                  ),
                  getDiv(),
                  GestureDetector(
                    onTap: () {
                      _showModalAboutApp(context);
                    },
                    child: getTap(
                      'О приложении',
                      Icon(
                        Icons.phone_android,
                        size: 25,
                      ),
                      context,
                    ),
                  ),
                ],
              ),
            ),
            getDiv(),
          ],
        ),
      ),
    );
  }
}

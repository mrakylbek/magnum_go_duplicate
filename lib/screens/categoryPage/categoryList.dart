import 'package:flutter/material.dart';
import 'package:magnum_go_duplicate/constants.dart';
import 'package:magnum_go_duplicate/models/category.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

List<Category> categoriesList = [
  Category(
      id: 1,
      image: 'https://magnum.kz:1337/uploads/4870002329210_c817e40b8f.jpg',
      name: 'Вода',
      podCategory: const [
        'Вода негазированная',
        'Вода газированная',
        'Вода минеральная'
      ]),
  Category(
      id: 2,
      image: 'https://magnum.kz:1337/uploads/4870234680530_67f416da80.jpg',
      name: 'Напитки',
      podCategory: [
        'Газированные напитки',
        'Энергетические напитки',
        'Кофейные напитки'
      ]),
  Category(
      id: 3,
      image: 'https://magnum.kz:1337/uploads/4870002329319_e460f5616b.jpg',
      name: 'Соки, нектары',
      podCategory: [
        'Соки',
        'Нектары, сокосодержащие напитки',
      ]),
  Category(
    id: 4,
    image: 'https://magnum.kz:1337/uploads/4870085002710_191485fa45.jpg',
    name: 'Морсы, холодные чаи',
    podCategory: [
      'Морсы, компоты',
      'Холодный чай, квас, комбуча',
    ],
  ),
];
bool isOpen = false;

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        return ExpansionTile(
          title: categoryHeader(index),
          trailing: Text(''),
          children: [categoryBody(index)],
          textColor: appTitleColor,
          collapsedTextColor: Colors.black,
        );
      },
    );
    // ExpansionPanelList.radio(
    //   children: categoriesList
    //       .map(
    //         (e) => ExpansionPanel(
    //             headerBuilder: (context, isOpen) => categoryHeader(e),
    //             body: categoryBody(e),
    //             // value: ,
    //             isExpanded: true),
    //       )
    //       .toList(),
    // );
  }

  Widget categoryHeader(index) {
    return Container(
      height: 65,
      // margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      categoriesList[index].image,
                    ),
                    fit: BoxFit.cover)),
            margin: EdgeInsets.symmetric(horizontal: 5),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              // 'Qwertyui',
              categoriesList[index].name,
              maxLines: 2,
              style: TextStyle(
                // color: isOpen ? appTitleColor : Colors.black,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget categoryBody(index) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 50),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: categoriesList[index].podCategory.length,
            itemBuilder: (BuildContext context, int i) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/productList',
                    // categoriesList[index].podCategory,
                  );
                },
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        width: 2,
                        height: 40,
                        color: appTitleColor,
                        margin: EdgeInsets.only(left: 50, right: 30),
                      ),
                      Flexible(
                        child: Text(
                          categoriesList[index].podCategory[i],
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight:
                                i == 0 ? FontWeight.w500 : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

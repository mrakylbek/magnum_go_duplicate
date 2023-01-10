import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselBody extends StatefulWidget {
  const CarouselBody({super.key});

  @override
  State<CarouselBody> createState() => _CarouselBodyState();
}

class _CarouselBodyState extends State<CarouselBody> {
  late PageController _pageController;
  List<String> images = [
    "https://wallpaperaccess.com/full/8405169.jpg",
    "https://wallpaperaccess.com/full/791.jpg",
    "https://wallpaperaccess.com/full/128130.jpg",
    "https://wallpaperaccess.com/full/8405159.jpg",
    "https://wallpaperaccess.com/full/2637581.jpg",
    "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
  ];
  int activePage = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  // AnimatedContainer slider(images, pagePosition, active) {
  //   // double margin = active ? 10 : 25;
  //   return AnimatedContainer(
  //     // height: 200,
  //     width: 400,
  //     // width: MediaQuery.of(context).size.width,
  //     duration: const Duration(milliseconds: 500),
  //     curve: Curves.easeInOutCubic,
  //     // margin: EdgeInsets.all(margin),
  //     margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
  //     decoration: BoxDecoration(
  //         image: DecorationImage(
  //             image: NetworkImage(images[pagePosition]), fit: BoxFit.cover)),
  // );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      // width: 400,
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      // width: MediaQuery.of(context).size.width * 0.95,
      // child: CarouselSlider.builder(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 170.0,
          autoPlay: true,
          // enlargeCenterPage: true,
          viewportFraction: 0.95,
        ),
        // itemCount: images.length,
        items: images
            .map(
              (item) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(item), fit: BoxFit.cover)),
                // child: Image.network(
                //   item,
                //   fit: BoxFit.cover,
                // ),
              ),
            )
            .toList(),
        // itemBuilder: (context, pagePosition, realIndex) {
        //   bool active = pagePosition == realIndex;
        //   return slider(images, pagePosition, active);
        //   // return Padding(
        //   //   padding: const EdgeInsets.all(8.0),
        //   //   child: Text(items[itemIndex]),
        //   // );
        // },
      ),
      // PageView.builder(
      //     itemCount: images.length,
      //     pageSnapping: true,
      //     controller: _pageController,
      //     onPageChanged: (page) {
      //       setState(() {
      //         activePage = page;
      //       });
      //     },
      //     itemBuilder: (context, pagePosition) {
      //       bool active = pagePosition == activePage;
      //       return slider(images, pagePosition, active);
      //       // return Container(
      //       //   margin: EdgeInsets.all(10),
      //       //   child: Image.network(images[pagePosition]),
      //       // );
      //     }),
    );
  }
}

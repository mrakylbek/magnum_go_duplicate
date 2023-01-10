import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:magnum_go_duplicate/constants.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  // double _ratingValue = 0;
  bool isRated = false, isTap = false;
  @override
  Widget build(BuildContext context) {
    // return RatingBar.builder(
    return Container(
      // color: Colors.green,
      // height: 260,
      child: Column(
        children: [
          RatingBar(
            initialRating: 0,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: false,
            itemCount: 5,
            itemSize: 50,
            itemPadding: EdgeInsets.symmetric(horizontal: 10),
            ratingWidget: RatingWidget(
              full: const Icon(
                Icons.thumb_up,
                color: appTitleColor,
              ),
              half: const Icon(
                Icons.thumb_up_alt_outlined,
                color: kTextColor,
              ),
              empty: const Icon(
                Icons.thumb_up_alt_outlined,
                color: kTextColor,
              ),
            ),
            // itemBuilder: (BuildContext context, int index) {
            //   return Icon(
            //     Icons.thumb_up,
            //     color: appTitleColor,
            //   );
            // },
            onRatingUpdate: (value) {
              setState(() {
                // _ratingValue = value;
                isRated = true;
              });
            },
          ),
          if (isRated)
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: appTitleColor),
                borderRadius: BorderRadius.circular(16),
                color: isTap ? appTitleColor : Colors.white,
              ),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isTap = !isTap;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Оставить отзыв',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: isTap ? Colors.white : appTitleColor,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
    ;
  }
}

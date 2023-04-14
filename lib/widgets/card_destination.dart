import 'package:flutter/material.dart';

import '../themes/constant.dart';

class CardDestination extends StatelessWidget {

  final String imgSrc;
  final String perNight;
  final String title;
  final String subTitle;
  final String reviews;

  const CardDestination({
    Key? key, required this.imgSrc, required this.perNight, required this.title, required this.subTitle, required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
              imgSrc),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: <Widget>[
          Container(
            width: 200,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  textBlack.withOpacity(.9),
                  textBlack.withOpacity(.0),
                ],
                begin: const FractionalOffset(0, 1),
                end: const FractionalOffset(0, 0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: primary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        "\$$perNight",
                        style: const TextStyle(
                          color: textWhite,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      Text(
                        title,
                        style: const TextStyle(
                          color: textWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        subTitle,
                        style: TextStyle(
                          color: textWhite.withOpacity(.6),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                          Icon(Icons.star, color: starColor, size: 20),
                          SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "$reviews Reviews",
                        style: TextStyle(
                          color: textWhite.withOpacity(.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
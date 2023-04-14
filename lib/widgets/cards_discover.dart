import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../themes/constant.dart';

class CardDiscover extends StatelessWidget {
  final String imgSrc;
  final String label;

  const CardDiscover({
    Key? key, required this.imgSrc, required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
        color: textWhite,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(imgSrc),
            Text(
              label,
              style: TextStyle(
                color: textBlack.withOpacity(.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
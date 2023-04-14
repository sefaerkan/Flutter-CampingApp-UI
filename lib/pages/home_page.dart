import 'package:camping/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';

import '../widgets/card_destination.dart';
import '../widgets/cards_discover.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * .6,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: bgColor,
              image: DecorationImage(
                image: AssetImage("assets/images/tree_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SvgPicture.asset("assets/images/burger_icon.svg"),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SvgPicture.asset("assets/images/profile_icon.svg"),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  color: textWhite.withOpacity(.7),
                                ),
                              ),
                              const SizedBox(height: 3),
                              Text(
                                "Sefa Erkan",
                                style: TextStyle(
                                  color: textWhite.withOpacity(.7),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/images/notification_icon.svg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: textWhite,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 10),
                        child: TextField(
                          controller: _controllerSearch,
                          cursorColor: textBlack.withOpacity(.5),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Here",
                            prefixIcon: Icon(
                              LineIcons.search,
                              color: textBlack.withOpacity(.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Discover",
                        style: appTitle,
                      ),
                      const SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const <Widget>[
                            CardDiscover(
                              imgSrc: "assets/images/tent_icon.svg",
                              label: "Campus",
                            ),
                            SizedBox(width: 10),
                            CardDiscover(
                              imgSrc: "assets/images/fishing_icon.svg",
                              label: "Fishing",
                            ),
                            SizedBox(width: 10),
                            CardDiscover(
                              imgSrc: "assets/images/cooking_icon.svg",
                              label: "Cooking",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.55),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: textWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 20),
                  Align(
                    child: Container(
                      width: 50,
                      height: 3,
                      decoration: BoxDecoration(
                          color: textBlack.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Popular Destinations",
                    style: TextStyle(
                      color: textBlack.withOpacity(.5),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const <Widget>[
                        CardDestination(
                          imgSrc: 'https://images.unsplash.com/photo-1550236520-7050f3582da0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                          perNight: '45/night',
                          title: 'Sandy Ridge Camping',
                          subTitle: 'canton',
                          reviews: '86',
                        ),
                        SizedBox(width: 15),
                        CardDestination(
                          imgSrc: 'https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
                          perNight: '36/night',
                          title: 'Richardson Creed',
                          subTitle: 'ecoRich',
                          reviews: '55',
                        ),
                      ],
                    ),
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



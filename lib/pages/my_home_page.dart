import 'dart:ui';

import 'package:covid_19_ui/colors/color.dart';
import 'package:covid_19_ui/widgets/regular_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.appColor,
        leading: Image.asset(
          "assets/menu.png",
          width: 25,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Berling, Germany",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_outlined,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/bell.png",
                  width: 25,
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/covid-bg.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "6738",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Total Cases",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset.zero,
                                  color: Color(0xffd7d5d5),
                                  blurRadius: 15,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 110,
                                  width: (width - 80) / 2,
                                  child: Image.asset("assets/doctor.png"),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Symptom\nChecker",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Based on common\nsymptom",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              RegularCard(
                                iconName: "assets/map.svg",
                                cardLabel: "Map",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RegularCard(
                                iconName: "assets/virus.svg",
                                cardLabel: "Risk of\ninfection",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RegularCard(
                                iconName: "assets/upload.svg",
                                cardLabel: "Upload\ndata",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              RegularCard(
                                iconName: "assets/trend.svg",
                                cardLabel: "Statistics",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RegularCard(
                                iconName: "assets/facemask.svg",
                                cardLabel: "Protection",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RegularCard(
                                iconName: "assets/phone.svg",
                                cardLabel: "Contacts",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

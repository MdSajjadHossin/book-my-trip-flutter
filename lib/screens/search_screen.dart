import 'dart:ui';

import 'package:book_my_trip/utils/app_layout.dart';
import 'package:book_my_trip/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.GetWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are\nyou looking for?",
            style: Styles.headLineStyle
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  // -------------------airline ticket---------
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          AppLayout.getHeight(40),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      "Airline tickets",
                      style: Styles.headLineStyle4,
                    )),
                  ),
                  // ----------------------hotel tickets--------------------
                  Container(
                    width: size.width * 0.44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(
                            AppLayout.getHeight(40),
                          ),
                        ),
                        color: Colors.transparent),
                    child: Center(
                        child: Text(
                      "hotel tickets",
                      style: Styles.headLineStyle4,
                    )),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(40)),
                color: const Color(0xFFF4F6FD),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
        ],
      ),
    );
  }
}

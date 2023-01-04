import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: AppLayout.getHeight(12),
          horizontal: AppLayout.GetWidth(12)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.GetWidth(10))),
      child: Row(
        children: [
          const Icon(
            Icons.flight_takeoff_rounded,
            color: Color(0xFFBFC2DF),
          ),
          Gap(
            AppLayout.GetWidth(15),
          ),
          Text(
            "Departure",
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

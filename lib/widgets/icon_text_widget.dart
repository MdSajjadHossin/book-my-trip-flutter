import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconTextWidget({super.key, required this.icon, required this.text});

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
          Icon(
            icon,
            color: Color(0xFFBFC2DF),
          ),
          Gap(
            AppLayout.GetWidth(15),
          ),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

import 'package:book_my_trip/utils/app_layout.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs(
      {super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      child: FittedBox(
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
                  firstTab,
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
                  secondTab,
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
    );
  }
}

import 'package:book_my_trip/screens/ticket_view.dart';
import 'package:book_my_trip/utils/app_info_list.dart';
import 'package:book_my_trip/utils/app_layout.dart';
import 'package:book_my_trip/utils/app_styles.dart';
import 'package:book_my_trip/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.GetWidth(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickte",
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Pervious"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

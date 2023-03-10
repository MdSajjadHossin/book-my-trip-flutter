import 'package:book_my_trip/utils/app_layout.dart';
import 'package:book_my_trip/utils/app_styles.dart';
import 'package:book_my_trip/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({super.key, required this.ticket, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                  bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  bottomRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(16)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              ticket['from']['code'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3,
                            ),
                            Expanded(child: Container()),
                            const ThickContainer(
                              isColor: true,
                            ),
                            Expanded(
                              child: Stack(children: [
                                SizedBox(
                                  height: AppLayout.getHeight(24),
                                  child: LayoutBuilder(
                                    builder: (BuildContext context,
                                        BoxConstraints constraints) {
                                      // print(
                                      //     "The width is ${constraints.constrainWidth()}");
                                      return Flex(
                                        direction: Axis.horizontal,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                              color: isColor == null
                                                  ? Colors.white
                                                  : Colors.grey.shade300,
                                            )),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Center(
                                  child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(
                                      Icons.local_airport_rounded,
                                      color: isColor == null
                                          ? Colors.white
                                          : Color(0xFF8ACCF7),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const ThickContainer(
                              isColor: true,
                            ),
                            Expanded(child: Container()),
                            Text(
                              ticket['to']['code'],
                              style: isColor == null
                                  ? Styles.headLineStyle3
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle3,
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: AppLayout.GetWidth(100),
                              child: Text(
                                ticket['from']['name'],
                                style: isColor == null
                                    ? Styles.headLineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLineStyle4,
                              ),
                            ),
                            Text(
                              ticket['flying_time'],
                              style: isColor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4,
                            ),
                            SizedBox(
                              width: AppLayout.GetWidth(100),
                              child: Text(
                                ticket['to']['name'],
                                textAlign: TextAlign.end,
                                style: isColor == null
                                    ? Styles.headLineStyle4
                                        .copyWith(color: Colors.white)
                                    : Styles.headLineStyle4,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // ------------------middle layer of ticket-------------
                  Container(
                    color: isColor == null ? Styles.ornageColor : Colors.white,
                    child: Row(
                      children: [
                        SizedBox(
                          width: AppLayout.GetWidth(10),
                          height: AppLayout.getHeight(20),
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  (constraints.constrainWidth() / 15).floor(),
                                  (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                        SizedBox(
                          width: AppLayout.GetWidth(10),
                          height: AppLayout.getHeight(20),
                          child: const DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // ---------------------titcket bottom layer-------------
                  Container(
                    decoration: BoxDecoration(
                      color:
                          isColor == null ? Styles.ornageColor : Colors.white,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21),
                      ),
                    ),
                    padding: const EdgeInsets.only(
                        left: 16, top: 10, right: 16, bottom: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ticket['date'],
                                  style: isColor == null
                                      ? Styles.headLineStyle3
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle3,
                                ),
                                const Gap(5),
                                Text(
                                  "Date",
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ticket['departure_time'],
                                  style: isColor == null
                                      ? Styles.headLineStyle3
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle3,
                                ),
                                const Gap(5),
                                Text(
                                  "Departure time",
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4,
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  ticket["number"].toString(),
                                  style: isColor == null
                                      ? Styles.headLineStyle3
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle3,
                                ),
                                const Gap(5),
                                Text(
                                  "Nnumber",
                                  style: isColor == null
                                      ? Styles.headLineStyle4
                                          .copyWith(color: Colors.white)
                                      : Styles.headLineStyle4,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

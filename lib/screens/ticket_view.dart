import 'package:book_my_trip/utils/app_layout.dart';
import 'package:book_my_trip/utils/app_styles.dart';
import 'package:book_my_trip/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.9,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              margin: const EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              ticket['from']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Expanded(child: Container()),
                            const ThickContainer(),
                            Expanded(
                              child: Stack(children: [
                                SizedBox(
                                  height: 24,
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
                                          (index) => const SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                              color: Colors.white,
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
                                    child: const Icon(
                                      Icons.local_airport_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            const ThickContainer(),
                            Expanded(child: Container()),
                            Text(
                              ticket['to']['code'],
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        const Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                ticket['from']['name'],
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            Text(
                              ticket['flying_time'],
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                ticket['to']['name'],
                                textAlign: TextAlign.end,
                                style: Styles.headLineStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // ------------------middle layer of ticket-------------
                  Container(
                    color: Styles.ornageColor,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                          height: 20,
                          child: DecoratedBox(
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
                                  (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )),
                        const SizedBox(
                          width: 10,
                          height: 20,
                          child: DecoratedBox(
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
                      color: Styles.ornageColor,
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
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                const Gap(5),
                                Text(
                                  "Date",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  ticket['departure_time'],
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                const Gap(5),
                                Text(
                                  "Departure time",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  ticket["number"].toString(),
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                                const Gap(5),
                                Text(
                                  "Nnumber",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
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

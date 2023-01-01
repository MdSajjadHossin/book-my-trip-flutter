import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Goog Morning",
                        ),
                        Text(
                          "Book Tickets",
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"),
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:freight_smart/order/order.dart';
import 'package:freight_smart/payment/payment.dart';
import 'package:freight_smart/profile/profile.dart';
import 'package:freight_smart/truck/truck.dart';

import '../utility/color_constants.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;

  final pages = [
    const Order(),
    const Payment(),
    const Truck(),
    const Profile(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: pages[pageIndex],
        bottomNavigationBar: buildMyNavBar(context),
      );
  }

  Container buildMyNavBar(BuildContext context) {
    final buttonStyleLive = ElevatedButton.styleFrom(
        fixedSize: const Size(250, 60),
        backgroundColor: kPrimaryColor,
        foregroundColor: Colors.white
    );
    final buttonStyleAudio = ElevatedButton.styleFrom(
      fixedSize: const Size(250, 60),
      backgroundColor: Colors.white,
      foregroundColor: kPrimaryColor,
      side: const BorderSide(
        width: 1.0,
        color: kPrimaryColor,
      ),
    );

    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Column(
                  children: [
                    Icon(
                    color: kPrimaryColor,
                    Icons.event_note_outlined,
                    size: 30,
                    ),
                    Text("Orders",
                        style: TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans")
                    )
                  ],
                )
                : const Column(
                  children: [
                    Icon(
                    color: kNavIconDeselect,
                    Icons.event_note_outlined,
                    size: 30),
                    Text("Orders",
                        style: TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans")
                    )
                  ],
                )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Column(
                children: [
                  Icon(
                    color: kPrimaryColor,
                    Icons.currency_exchange,
                    size: 30,
                  ),
                  Text("Payments",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
                  : const Column(
                children: [
                  Icon(
                      color: kNavIconDeselect,
                      Icons.currency_exchange,
                      size: 30),
                  Text("Payments",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Column(
                children: [
                  Icon(
                    color: kPrimaryColor,
                    Icons.fire_truck,
                    size: 30,
                  ),
                  Text("Trucks",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
                  : const Column(
                children: [
                  Icon(
                      color: kNavIconDeselect,
                      Icons.fire_truck,
                      size: 30),
                  Text("Trucks",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
          ),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Column(
                children: [
                  Icon(
                    color: kPrimaryColor,
                    Icons.person_outline,
                    size: 30,
                  ),
                  Text("My Profile",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
                  : const Column(
                children: [
                  Icon(
                      color: kNavIconDeselect,
                      Icons.person_outline,
                      size: 30),
                  Text("My Profile",
                      style: TextStyle(fontSize: 14, color: Colors.black,
                          fontFamily: "DMSans")
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}

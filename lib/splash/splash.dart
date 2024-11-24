import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freight_smart/dashboard/dashboard.dart';
import 'package:freight_smart/editprofile/editprofile.dart';
import 'package:freight_smart/expenses/expenses.dart';
import 'package:freight_smart/login/loginwithphone.dart';
import 'package:freight_smart/order/order.dart';
import 'package:freight_smart/orderdetails/orderdetails.dart';
import 'package:freight_smart/payment/payment.dart';
import 'package:freight_smart/profile/profile.dart';
import 'package:freight_smart/truck/truck.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const LoginWithPhone();
          //return const Expenses();
        },
      ));
    });
    return Scaffold(
      backgroundColor: kSplashBGColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageConstants.LOGO,
              // scale: 7,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
                "Version Details",
                style: TextStyle(fontSize: 14, color: Colors.white,
                    fontFamily: "DMSans")
            ),
          ],
        ),
      ),
    );
  }
}

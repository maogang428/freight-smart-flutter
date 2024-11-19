import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
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
    /*Timer(const Duration(seconds: 2), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          //return PrefHelper().getString('token') == null ?  Profile(userName: "",email: "biswas@gmail.com",mobileNumber:"") : Profile(userName: "",email: "biswas@gmail.com",mobileNumber:"");
          return PrefHelper().getString('token') == null ? const Login() : const Dashboard();
        },
      ));
    });*/
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

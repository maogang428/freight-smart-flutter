import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class LoginWithPhone extends StatefulWidget {
  const LoginWithPhone({super.key});

  @override
  State<LoginWithPhone> createState() => _LoginWithPhoneState();
}

class _LoginWithPhoneState extends State<LoginWithPhone> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 40),
                      child: AspectRatio(aspectRatio: 1, child: Image.asset(ImageConstants.APP_HEADER, fit: BoxFit.cover),),
                    ),
                    ClipRRect(
                      child: Image.asset(ImageConstants.LOGO, height: 100, width: 100),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Text(
                      "Hi, Welcome Back",
                      style: TextStyle(fontSize: 22,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.bold)
                  ),
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Text(
                      "Please enter your phone number to continue",
                      style: TextStyle(fontSize: 14,
                          fontFamily: "DMSans")
                  ),
                ),
                const SizedBox(height: 40.0),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Text(
                      "Phone Number",
                      style: TextStyle(fontSize: 18,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.bold)
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: '+998 XX-XXX-XX-XX',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: kFormFieldFilledColor,
                    ),
                    style: const TextStyle(fontSize: 14, color: Colors.black,
                        fontFamily: "DMSans"),
                  ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<
                                    Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<
                                    Color>(kPrimaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          color: kPrimaryColor),
                                    )
                                ),
                              ),
                              onPressed: () {  },
                              child: const Text(
                                  "Next",
                                  style: TextStyle(fontSize: 16,
                                      fontFamily: "DMSans")
                              )
                          )
                      )
                  ),
                )
              ],
            ),
          ),
        );
     }
}



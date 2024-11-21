import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freight_smart/selectcompany/selectcompany.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class SendOtp extends StatefulWidget {
  const SendOtp({super.key});

  @override
  State<SendOtp> createState() => _SendOtpState();
}

class _SendOtpState extends State<SendOtp> {
  final _formKey = GlobalKey<FormState>();
  String otp = "";

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
                      "Enter your code",
                      style: TextStyle(fontSize: 22,
                          fontFamily: "DMSans",
                          fontWeight: FontWeight.bold)
                  ),
                ),
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Text(
                      "Code has been sent to +987*** **10",
                      style: TextStyle(fontSize: 14,
                          fontFamily: "DMSans")
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: PinFieldAutoFill(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: UnderlineDecoration(
                      textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                      colorBuilder: FixedColorBuilder(kGrey.withOpacity(0.3)),
                    ),
                    codeLength: 4,
                    onCodeChanged: (val){
                      otp = val!;
                      //print(val);
                    },
                    onCodeSubmitted: (_) {



                    } ,
                  ),
                ),
                const SizedBox(height: 30.0),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.0,0,20.0,0),
                    child: Text(
                        "Resend code in 53 sec",
                        style: TextStyle(fontSize: 14,
                            fontFamily: "DMSans")
                    ),
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
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SelectCompany();
                                      },
                                    ));
                              },
                              child: const Text(
                                  "Verify",
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



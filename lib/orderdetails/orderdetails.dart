import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freight_smart/dashboard/dashboard.dart';
import 'package:freight_smart/sendotp/sendotp.dart';

import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text('San Francisco, CA',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
              fontFamily: "DMSans")
      ),
      subtitle: Text('123 Market Street, CA\n#34567',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      content: Text('18th July 2022, 1:00 PM',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      isActive: true,
    ),
    const Step(
      title: Text('Los Angeles, CA',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
              fontFamily: "DMSans")
      ),
      subtitle: Text('123 Market Street, CA\n#34567',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      content: Text('18th July 2022, 1:00 PM',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      isActive: true,
    ),
    const Step(
      title: Text('Las Vegas, CA',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
              fontFamily: "DMSans")
      ),
      subtitle: Text('123 Market Street, CA\n#34567',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      content: Text('18th July 2022, 1:00 PM',
          style: TextStyle(fontSize: 14, color: Colors.grey,
              fontFamily: "DMSans")
      ),
      isActive: true,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Dashboard();
                      },
                    ));
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: AspectRatio(aspectRatio: 1, child: Image.asset(ImageConstants.ORDER_DETAILS_BG, fit: BoxFit.cover),
                      ),
                    ),
                    ClipRRect(
                      child: Image.asset(ImageConstants.DRIVER_ICON, height: 120, width: 120),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Rate",
                                          style: TextStyle(fontSize: 16, color: Colors.black,
                                              fontFamily: "DMSans")
                                      ),
                                      Text(
                                          "\$750.00",
                                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                              fontFamily: "DMSans")
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Charges",
                                          style: TextStyle(fontSize: 16, color: Colors.black,
                                              fontFamily: "DMSans")
                                      ),
                                      Text(
                                          "\$65.00",
                                          style: TextStyle(fontSize: 16, color: kPrimaryColor, fontWeight: FontWeight.bold,
                                              fontFamily: "DMSans")
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Documents",
                                          style: TextStyle(fontSize: 16, color: Colors.black,
                                              fontFamily: "DMSans")
                                      ),
                                      Text(
                                          "02",
                                          style: TextStyle(fontSize: 16, color: kPrimaryColor,
                                              fontFamily: "DMSans")
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            canvasColor: Colors.yellow,
                            colorScheme: Theme.of(context).colorScheme.copyWith(
                              primary: kPrimaryColor,
                            ),
                          ),
                          child: Stepper(
                            currentStep: current_step,
                            steps: steps,
                            type: StepperType.vertical,
                            onStepTapped: (step) {
                              setState(() {
                                current_step = step;
                              });
                            },
                            controlsBuilder: (context, details) => Container(),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Container/Trailer",
                                          style: TextStyle(fontSize: 16, color: Colors.black,
                                              fontFamily: "DMSans")
                                      ),
                                      Text(
                                          "UMXU34567",
                                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                              fontFamily: "DMSans")
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                                  child: Column(
                                    children: [
                                      Text(
                                          "Booking#",
                                          style: TextStyle(fontSize: 16, color: Colors.black,
                                              fontFamily: "DMSans")
                                      ),
                                      Text(
                                          "PO3456",
                                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                              fontFamily: "DMSans")
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,0,10.0,20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 175,
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
                                        return const SendOtp();
                                      },
                                    ));
                              },
                              child: const Text(
                                  "Accept",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              )
                          )
                      ),
                      SizedBox(
                          width: 175,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<
                                    Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(kRejectColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          color: kRejectColor),
                                    )
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const SendOtp();
                                      },
                                    ));
                              },
                              child: const Text(
                                  "Reject",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              )
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
     }
}



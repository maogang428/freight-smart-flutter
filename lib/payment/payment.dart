import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freight_smart/login/loginwithphone.dart';
import 'package:freight_smart/orderdetails/orderdetails.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';
import 'package:order_tracker/order_tracker.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}
final List<String> languageList = <String>['Total', 'In Progress', 'Completed', "Open", 'Completed'];

class _PaymentState extends State<Payment> {
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text('San Francisco, CA',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
              fontFamily: "DMSans")
      ),
      subtitle: Text('375 mi',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
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
      subtitle: Text('375 mi',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                              height: 70,
                              width: 70,
                              ImageConstants.TRUCKING
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10.0,0,0,0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "ABC Trucking Inc",
                                      style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                          fontFamily: "DMSans")
                                  ),
                                  Text(
                                      "Good Morning",
                                      style: TextStyle(fontSize: 13,color: Colors.grey,
                                          fontFamily: "DMSans")
                                  ),
                                ]
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: IconButton(
                                onPressed:() {},
                                icon: Image.asset(ImageConstants.IC_PHONE)
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: IconButton(
                                onPressed:() {},
                                icon: Image.asset(ImageConstants.IC_CHAT)
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Today',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: const Icon(Icons.calendar_month)
                    ),
                    style: const TextStyle(fontSize: 14, color: Colors.black,
                        fontFamily: "DMSans"),
                    onTap: (){

                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8),
                      itemCount: languageList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return horizontalItems();
                      }
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 500,
                  child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (BuildContext context, int index) {
                        return verticalItems();
                      }
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector horizontalItems(){
    return GestureDetector(
      onTap: (){

      },
      child: const SizedBox(
        width: 100,
        child: Card(
            color: Colors.white,
            shape: StadiumBorder(
              side: BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "5",
                              style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "Total",
                            style: TextStyle(fontSize: 12,color: Colors.grey,
                                fontFamily: "DMSans")
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
        ),
      ),
    );
  }


  GestureDetector verticalItems(){
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context,
            MaterialPageRoute(
              builder: (context) {
                return const OrderDetails();
              },
            ));
      },
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5.0,20.0,5.0,5.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                        child: Column(
                          children: [
                            Text(
                                "Load",
                                style: TextStyle(fontSize: 14, color: kTextDefault,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "#12345",
                                style: TextStyle(fontSize: 16,
                                    decoration: TextDecoration.underline,
                                    color: Colors.black, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                        child: Column(
                          children: [
                            Text(
                                "Rate",
                                style: TextStyle(fontSize: 14, color: Colors.black,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "\$750",
                                style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                        child: Column(
                          children: [
                            Text(
                                "Charges",
                                style: TextStyle(fontSize: 14, color: Colors.black,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "\$100",
                                style: TextStyle(fontSize: 16, color: kPrimaryColor, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                        color: kColorGreenPositive),
                                  )
                              ),
                            ),
                            onPressed: () {

                            },
                            child: const Text(
                                "Paid",
                                style: TextStyle(fontSize: 12,color: kColorGreenPositive, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            )
                        ),
                      )
                    ]),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(5.0,5.0,5.0,20.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                        child: Column(
                          children: [
                            Text(
                                "Pay By",
                                style: TextStyle(fontSize: 14, color: kTextDefault,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "ACH",
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
                                "Payment Date",
                                style: TextStyle(fontSize: 14, color: Colors.black,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "12th March 2024",
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
                                "",
                                style: TextStyle(fontSize: 14, color: Colors.black,
                                    fontFamily: "DMSans")
                            ),
                            Text(
                                "\$850",
                                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold,
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
            ],
          )
        ],
      ),
    );
  }
}

import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freight_smart/expenses/expenses.dart';
import 'package:freight_smart/login/loginwithphone.dart';
import 'package:freight_smart/orderdetails/orderdetails.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';
import 'package:order_tracker/order_tracker.dart';

class Truck extends StatefulWidget {
  const Truck({Key? key}) : super(key: key);

  @override
  State<Truck> createState() => _TruckState();
}
final List<String> languageList = <String>['Total', 'In Progress', 'Completed', "Open", 'Completed'];

class _TruckState extends State<Truck> {
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
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0,0,20.0,0),
                  child: Align(
                      alignment: FractionalOffset.topLeft,
                      child: SizedBox(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<
                                    Color>(kPrimaryColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: kPrimaryColor),
                                    )
                                ),
                              ),
                              onPressed: () {

                              },
                              child: const Wrap(
                                children: <Widget>[
                                  Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 24.0,
                                  ),
                                  SizedBox(
                                    width:10,
                                  ),
                                  Text(
                                      "Add Truck",
                                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,
                                          fontFamily: "DMSans")
                                  )
                                ],
                              )
                          )
                      )
                  ),
                ),
                const SizedBox(height: 10,),
                const Divider(
                  color: kDividerColor,
                ),
                ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return verticalItems();
                    }
                ),
              ],
            ),
          ),
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
                return const Expenses();
              },
            ));
      },
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5.0,20.0,5.0,5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "License",
                              style: TextStyle(fontSize: 14, color: kTextDefault,
                                  fontFamily: "DMSans")
                          ),
                          SizedBox(height: 5,),
                          Text(
                              "LX783NT",
                              style: TextStyle(fontSize: 14,
                                  color: Colors.black, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "MC",
                              style: TextStyle(fontSize: 14, color: Colors.black,
                                  fontFamily: "DMSans")
                          ),
                          Text(
                              "1342423",
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 120,
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
                              "In-Transit",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Register State",
                              style: TextStyle(fontSize: 14, color: kTextDefault,
                                  fontFamily: "DMSans")
                          ),
                          Text(
                              "CA",
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Insurance",
                              style: TextStyle(fontSize: 14, color: Colors.black,
                                  fontFamily: "DMSans")
                          ),
                          Text(
                              "Active",
                              style: TextStyle(fontSize: 14, color: kPrimaryColor, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "CA#",
                              style: TextStyle(fontSize: 14, color: Colors.black,
                                  fontFamily: "DMSans")
                          ),
                          Text(
                              "CA432",
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
           /* const Divider(
              color: kDividerColor,
            ),*/
          ],
        ),
      ),
    );
  }
}

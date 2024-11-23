import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:freight_smart/login/loginwithphone.dart';
import 'package:freight_smart/orderdetails/orderdetails.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';
import 'package:order_tracker/order_tracker.dart';



class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}
final List<String> languageList = <String>['Total', 'In Progress', 'Completed', "Open", 'Completed'];

class _OrderState extends State<Order> {
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                                      "MC: xxxxxxxxxxxx",
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
                SizedBox(
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
                const SizedBox(height: 20,),
                ListView.builder(
                    itemCount: 4,
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
      child: Card(
         color: Colors.white,
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          "#12345",
                          style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                              fontFamily: "DMSans")
                      ),
                      SizedBox(
                        height: 30,
                        width: 70,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: const BorderSide(
                                        color: kPrimaryColor),
                                  )
                              ),
                            ),
                            onPressed: () {

                            },
                            child: const Text(
                                "New",
                                style: TextStyle(fontSize: 10,
                                    fontFamily: "DMSans")
                            )
                        ),
                      )
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
                  physics: const ClampingScrollPhysics(),
                  currentStep: current_step,
                  steps: steps,
                  type: StepperType.vertical,
                  onStepTapped: (step) {
                    setState(() {
                      current_step = step;
                    });
                  },
                  controlsBuilder: (context, details) => Container(),
                  /*onStepContinue: () {
                    setState(() {
                      if (current_step < steps.length - 1) {
                        current_step = current_step + 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },
                  onStepCancel: () {
                    setState(() {
                      if (current_step > 0) {
                        current_step = current_step - 1;
                      } else {
                        current_step = 0;
                      }
                    });
                  },*/
                ),
              ),
            ],
          )
      ),
    );
  }
}

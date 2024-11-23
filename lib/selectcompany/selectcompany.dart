import 'package:flutter/material.dart';
import 'package:freight_smart/dashboard/dashboard.dart';
import 'package:freight_smart/sendotp/sendotp.dart';
import '../utility/color_constants.dart';
import '../utility/utils.dart';

class SelectCompany extends StatefulWidget {
  const SelectCompany({super.key});

  @override
  State<SelectCompany> createState() => _SelectCompanyState();
}

final List<String> languageList = <String>['ABC Trucking Inc', 'ABC Trucking Inc', 'ABC Trucking Inc', "ABC Trucking Inc"];

class _SelectCompanyState extends State<SelectCompany> {

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
                      return const SendOtp();
                    },
                  ));
            },
          ),
          title: const Text(
              "Select Company",
              style: TextStyle(fontSize: 18,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.bold)
          ),
        ),
        body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: languageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return getCompany();
                    }
                )
            ),
            Padding(padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
              child: nextButton(),
            ),
          ],
        ),
    )
    );
  }

  nextButton() => Align(
      alignment: FractionalOffset.center,
      child:SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(10),
                      side: const BorderSide(color: kPrimaryColor),
                    )
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Dashboard();
                      },
                    ));
              },
              child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, fontFamily: "DMSans",fontWeight: FontWeight.bold)
              )
          )
      )
  );

  GestureDetector getCompany(){
    return GestureDetector(
      onTap: (){

      },
      child: const Card(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,20.0,0,0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                              "ABC Trucking Inc",
                              style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,
                                  fontFamily: "DMSans")
                          ),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0,5.0,0,20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "MC: xxxxxxxxxxxx",
                            style: TextStyle(fontSize: 13,color: Colors.grey,
                                fontFamily: "DMSans")
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }

}

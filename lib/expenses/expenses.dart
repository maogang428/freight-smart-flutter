import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freight_smart/sendotp/sendotp.dart';
import 'package:image_picker/image_picker.dart';

import '../dashboard/dashboard.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final _formKey = GlobalKey<FormState>();
  XFile? imageFile = null;

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
            title: const Text(
                "Expenses",
                style: TextStyle(fontSize: 18,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.bold)
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Dropdown Box",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Doe',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: kFormFieldFilledColor,
                        ),
                        style: const TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Text Box",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Doe',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: kFormFieldFilledColor,
                        ),
                        style: const TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '+(123) 345 678',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: kFormFieldFilledColor,
                        ),
                        style: const TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Date",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: '12th March 2024',
                          prefixIcon: const Icon(Icons.calendar_month),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: kFormFieldFilledColor,
                        ),
                        style: const TextStyle(fontSize: 14, color: Colors.black,
                            fontFamily: "DMSans"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,20.0),
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
                                        return const SendOtp();
                                      },
                                    ));
                              },
                              child: const Text(
                                  "Save",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              )
                          )
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0.0),
                  child: Card(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        // Datatable widget that have the property columns and rows.
                          columns: const [
                            // Set the name of the column
                            DataColumn(label: Text(
                                'Expense\nCategory',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                             ),
                            ),
                            DataColumn(label: Text('Name',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            ),
                            DataColumn(label: Text('Date',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            ),
                            DataColumn(label: Text('Amount',
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            ),
                          ],
                          rows:const [
                            // Set the values to the columns
                            DataRow(cells: [
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("8/16/13",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("\$12,000",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("8/16/13",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("\$12,000",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("8/16/13",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("\$12,000",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                            ]),
                            DataRow(cells: [
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("LX783NT",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("8/16/13",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                              DataCell(
                                  Text("\$12,000",
                                      style: TextStyle(fontSize: 15,
                                          fontFamily: "DMSans")
                                  )
                              ),
                            ]),
                          ]
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 170,
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
                                  "Edit",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              )
                          )
                      ),
                      SizedBox(
                          width: 170,
                          height: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<
                                    Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(kDividerColor),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          color: kDividerColor),
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
                                  "Delete",
                                  style: TextStyle(fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
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

  //********************** IMAGE PICKER
  Future imageSelector(BuildContext context, String pickerType) async {
    final _picker = ImagePicker();
    switch (pickerType) {
      case "gallery":
      /// GALLERY IMAGE PICKER
        imageFile = await _picker.pickImage(
            source: ImageSource.gallery, imageQuality: 90);
        break;

      case "camera": // CAMERA CAPTURE CODE
        imageFile = await _picker.pickImage(
            source: ImageSource.camera, imageQuality: 90);
        break;
    }

    if (imageFile != null) {
      print("You selected  image : " + imageFile!.path);
      setState(() {
        debugPrint("SELECTED IMAGE PICK   $imageFile");
      });
    } else {
      print("You have not taken image");
    }
  }
  // Image picker
  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              ListTile(
                  title: const Text('Gallery'),
                  onTap: () => {
                    imageSelector(context, "gallery"),
                    Navigator.pop(context),
                  }),
              ListTile(
                title: const Text('Camera'),
                onTap: () => {
                  imageSelector(context, "camera"),
                  Navigator.pop(context)
                },
              ),
            ],
          );
        });
  }
}



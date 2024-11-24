import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freight_smart/sendotp/sendotp.dart';
import 'package:image_picker/image_picker.dart';

import '../dashboard/dashboard.dart';
import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
                "Edit Profile",
                style: TextStyle(fontSize: 18,
                    fontFamily: "DMSans",
                    fontWeight: FontWeight.bold)
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      _settingModalBottomSheet(context);
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.125,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: imageFile == null ?
                                AssetImage(ImageConstants.LOGO) as ImageProvider:
                                FileImage(File((imageFile!.path))),
                                fit: BoxFit.cover)
                        )
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "First Name",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            const SizedBox(height: 5,),
                            SizedBox(
                              width: 160,
                              child: TextFormField(
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
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  "Last Name",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              ),
                              SizedBox(
                                width: 160,
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'John',
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
                            ],
                          ),
                        ),
                      ]),
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
                          "Street",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '123 Main Street',
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "City",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            const SizedBox(height: 5,),
                            SizedBox(
                              width: 160,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: 'Los Angels',
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
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  "State",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              ),
                              SizedBox(
                                width: 160,
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'CA',
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
                            ],
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                                "License Number",
                                style: TextStyle(fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                            const SizedBox(height: 5,),
                            SizedBox(
                              width: 160,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: 'D7663433',
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
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  "License State",
                                  style: TextStyle(fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "DMSans")
                              ),
                              SizedBox(
                                width: 160,
                                child: TextFormField(
                                  decoration: InputDecoration(labelText: 'CA',
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
                            ],
                          ),
                        ),
                      ]),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,0,20.0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                          "Expiry Date",
                          style: TextStyle(fontSize: 18,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.bold)
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: '12th March 2026',
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



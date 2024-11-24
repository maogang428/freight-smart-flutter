import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freight_smart/editprofile/editprofile.dart';
import 'package:freight_smart/sendotp/sendotp.dart';
import 'package:image_picker/image_picker.dart';

import '../utility/color_constants.dart';
import '../utility/image_constant.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  XFile? imageFile = null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 18,
                      fontFamily: "DMSans",
                      fontWeight: FontWeight.bold)
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
               Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget> [
                          InkWell(
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
                          const SizedBox(height: 20,),
                          const Text(
                              "Esther Howard",
                              style: TextStyle(fontSize: 18,
                                  fontFamily: "DMSans",
                                  fontWeight: FontWeight.bold)
                          ),
                          const SizedBox(height: 5,),
                          const Text(
                              "+91 9999 98644",
                              style: TextStyle(fontSize: 16,
                                  color: Colors.grey,
                                  fontFamily: "DMSans")
                          ),
                          const SizedBox(height: 5,),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const EditProfile();
                                    },
                                  ));
                            },
                            child: const Text(
                                "Edit Profile",
                                style: TextStyle(fontSize: 16,
                                    color: kSecondaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "DMSans")
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,20,15,10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(ImageConstants.IC_SETTINGS, height: 30, width: 30),
                                const SizedBox(width: 10,),
                                const Text(
                                    "Settings",
                                    style: TextStyle(fontSize: 16, color: Colors.black,
                                        fontFamily: "DMSans")
                                ),
                                Expanded(
                                  child: Image.asset
                                    (ImageConstants.IC_ARROW_RIGHT, height: 30, width: 30,alignment: Alignment.topRight,),
                                )
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,15,10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(ImageConstants.IC_NOTIFICATION, height: 30, width: 30),
                                const SizedBox(width: 10,),
                                const Text(
                                    "Notification",
                                    style: TextStyle(fontSize: 16, color: Colors.black,
                                        fontFamily: "DMSans")
                                ),
                                Expanded(
                                  child: Image.asset
                                    (ImageConstants.IC_ARROW_RIGHT, height: 30, width: 30,alignment: Alignment.topRight,),
                                )
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,15,10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(ImageConstants.IC_SECURITY, height: 30, width: 30),
                                const SizedBox(width: 10,),
                                const Text(
                                    "Security",
                                    style: TextStyle(fontSize: 16, color: Colors.black,
                                        fontFamily: "DMSans")
                                ),
                                Expanded(
                                  child: Image.asset
                                    (ImageConstants.IC_ARROW_RIGHT, height: 30, width: 30,alignment: Alignment.topRight,),
                                )
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,15,10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(ImageConstants.IC_INFORMATION, height: 30, width: 30),
                                const SizedBox(width: 10,),
                                const Text(
                                    "Help Center",
                                    style: TextStyle(fontSize: 16, color: Colors.black,
                                        fontFamily: "DMSans")
                                ),
                                Expanded(
                                  child: Image.asset
                                    (ImageConstants.IC_ARROW_RIGHT, height: 30, width: 30,alignment: Alignment.topRight,),
                                )
                              ]),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15,0,15,0),
                          child: Divider(
                            color: kDividerColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,10,15,20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(ImageConstants.IC_LOGOUT, height: 30, width: 30),
                                const SizedBox(width: 10,),
                                const Text(
                                    "Logout",
                                    style: TextStyle(fontSize: 16, color: kSecondaryColor,
                                        fontFamily: "DMSans")
                                )
                              ]),
                        ),

                      ],
                    ),
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



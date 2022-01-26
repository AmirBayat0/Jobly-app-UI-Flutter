// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobly_app_ui/constants.dart';
import 'package:jobly_app_ui/screens/home_screen.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: currentWidth,
          height: currentHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              backgroundColor1,
              backgroundColor2,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: currentWidth / 2.9,
                height: currentHeight / 11,
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Jobly.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: mainColor,
                        fontSize: 23,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    width: currentWidth,
                    height: currentHeight / 3.5,
                    child: Image(
                      image: AssetImage('assets/images/bag.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: currentWidth,
                height: currentHeight / 2.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: mainColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: currentHeight / 2.4,
                      height: currentHeight / 9,
                      child: Center(
                        child: Text(
                          "Your dream job is waiting for you!",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: currentHeight / 2.4,
                      height: currentHeight / 15,
                      child: Center(
                        child: Text(
                          "Discover millions of jobs and\nget in touch with hiring managers.",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          height: currentHeight / 13,
                          minWidth: currentWidth / 2.5,
                          onPressed: () {
                            Get.snackbar(
                                "Jobly", "You are already signed in up",
                                messageText: Text(
                                  "You are already signed in up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                overlayBlur: 4,
                                dismissDirection: DismissDirection.horizontal,
                                icon: Icon(
                                  Icons.account_circle_rounded,
                                  color: mainColor,
                                  size: 30,
                                ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: mainColor, fontSize: 18),
                          ),
                          color: backgroundColor1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        MaterialButton(
                          height: currentHeight / 15,
                          minWidth: currentWidth / 9,
                          onPressed: () {
                            Get.to(HomeScreen(),
                            transition: Transition.cupertino,
                            duration: Duration(milliseconds: 1200));
                          },
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: mainColor,
                            size: 22,
                          ),
                          color: backgroundColor1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

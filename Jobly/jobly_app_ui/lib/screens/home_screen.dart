// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:jobly_app_ui/models/models.dart';
import 'package:jobly_app_ui/constants.dart';
import 'package:badges/badges.dart';
import 'package:jobly_app_ui/models/modelsr.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: mainColor,
          body: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.35),
                              spreadRadius: 1,
                              offset: Offset(0, 8),
                              blurRadius: 30),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 190, top: 20),
                    child: Container(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        radius: 50,
                        child: CircleAvatar(
                          backgroundColor: mainColor,
                          radius: 25,
                          child: Badge(
                            child: Tooltip(
                              message: "notifications",
                              child: Icon(
                                Icons.notifications_none,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                            badgeContent: Text(""),
                            padding: EdgeInsets.all(4),
                            position: BadgePosition(bottom: 12, end: 4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 20),
                    child: Container(
                      height: 55,
                      width: 55,
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.4),
                        radius: 50,
                        child: CircleAvatar(
                          backgroundColor: mainColor,
                          radius: 25,
                          child: Tooltip(
                            message: "Menu",
                            child: Icon(
                              Icons.drag_handle,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: currentHeight / 2.2,
                height: currentHeight / 8,
                child: Text(
                  "Discover your \nfavorite job.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: currentHeight / 2.2,
                height: currentHeight / 14,
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  showCursor: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.multiple_stop,
                      color: Colors.grey[600],
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    labelText: "Search your job..",
                    hintText: "Developer, Designer..",
                    hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
                    labelStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: mainColor, width: 1.3),
                        borderRadius: BorderRadius.circular(25)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: mainColor, width: 1.3),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: currentWidth / 2.9,
                    height: currentHeight / 20,
                    child: Center(
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    width: currentWidth / 4,
                    height: currentHeight / 20,
                    child: Center(
                      child: Text(
                        "More >",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                width: currentWidth / 1.1,
                height: currentHeight / 5.5,
                child: ListView.builder(
                    itemCount: modelsC.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: currentWidth / 4.5,
                            height: currentHeight / 8.9,
                            decoration: BoxDecoration(
                                color: modelsC[index].color,
                                borderRadius: BorderRadius.circular(20)),
                            child: Image(
                              image: AssetImage(modelsC[index].assetAddress),
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            width: currentWidth / 4.5,
                            height: currentHeight / 28,
                            child: Center(
                              child: Text(
                                modelsC[index].name,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[500]),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 42),
                    child: Container(
                      width: currentWidth / 2.7,
                      height: currentHeight / 20,
                      child: Center(
                        child: Text(
                          "Recommended",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: currentWidth / 4,
                    height: currentHeight / 18,
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.refresh,
                          size: 30,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: currentWidth / 1.2,
                height: currentHeight / 4,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: modelsR.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: currentWidth / 1.28,
                        height: currentHeight / 4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(modelsR[index].assetAddress),
                              fit: BoxFit.cover),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 250, top: 10),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.turned_in,
                                    color: mainColor,
                                    size: 30,
                                  )),
                            ),
                            Expanded(child: Container()),
                            Container(
                              height: currentHeight / 10,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 25,
                                    ),
                                    child: Container(
                                      width: 200,
                                      height: 50,
                                      child: Column(
                                        //
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            modelsR[index].title,
                                            style: TextStyle(
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            modelsR[index].subtite,
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.deepPurpleAccent[400],
                                    ),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward,
                                          color: mainColor,
                                          size: 20,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

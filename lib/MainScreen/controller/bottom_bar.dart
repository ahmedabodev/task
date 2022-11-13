import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_company/home/view/screens/homescreen.dart';


class MainController extends GetxController {
  int index = 0;
  List<Widget> screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),


  ];


  void change(int value) {
    index = value;
    screens[index];
    update();
  }
}

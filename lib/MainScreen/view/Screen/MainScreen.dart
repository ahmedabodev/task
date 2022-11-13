import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controller/bottom_bar.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final MainController c = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
              child: controller.screens[c.index]),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.red,
            onTap: (value) {
              controller.change(value);
            },
            index:controller.index ,
            items:  const [


                Icon(Icons.home),


               Icon(Icons.schedule),


                Icon(Icons.report_gmailerrorred),



               Icon(Icons.settings),




            ],
          ),
        );
      },
    );
  }
}

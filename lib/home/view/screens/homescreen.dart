import 'package:flutter/material.dart';
import 'package:weather_company/home/view/widget/appbar.dart';
import 'package:weather_company/home/view/widget/card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppbarScreen(),
        Expanded(child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
          return  const CardScreen();
        },)),
      ],
    );
  }
}

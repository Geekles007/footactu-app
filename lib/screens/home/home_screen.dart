import 'package:flutter/material.dart';
import 'package:renter/screens/home/components/layout.dart';
import 'package:renter/theme.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      title: "Home",
      home: Layout()
    );
  }
}
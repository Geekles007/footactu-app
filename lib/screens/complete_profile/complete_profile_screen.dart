import 'package:flutter/material.dart';
import 'package:renter/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = '/complete_profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete profile"),
      ),
      body: Body(),
    );
  }
}
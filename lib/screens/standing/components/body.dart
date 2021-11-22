import 'package:flutter/material.dart';
import 'package:renter/screens/standing/components/standing.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Standing();
      }
    );
  }
}





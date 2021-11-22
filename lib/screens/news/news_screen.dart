import 'package:flutter/material.dart';
import 'package:renter/screens/news/components/body.dart';

class NewsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest News"),
      ),
      body: Body(),
    );
  }
}
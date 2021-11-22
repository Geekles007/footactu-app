import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/products/components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Shop'),
      centerTitle: false,
      backgroundColor: kPrimaryColor,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"), 
          onPressed: () {}
        )
      ],
    );
  }
}

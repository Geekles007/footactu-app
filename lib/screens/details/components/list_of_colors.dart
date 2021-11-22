import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/details/components/color_dot.dart';

class ListOfColors extends StatelessWidget {
  const ListOfColors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDot(
            isSelected: true,
            fillColor: Color(0xFF80989A),
          ),
          ColorDot(
            fillColor: Color(0xFFFF5200),
          ),
          ColorDot(
            fillColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
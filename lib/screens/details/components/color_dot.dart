import 'package:flutter/material.dart';
import 'package:renter/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key, this.fillColor, this.isSelected = false,
  }) : super(key: key);

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Color(0xFF707070) : Colors.transparent
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor
        ),
      ),
    );
  }
}

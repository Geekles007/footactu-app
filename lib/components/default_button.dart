import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(66),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text, 
          style: TextStyle(
            fontSize: getProportionateScreenHeight(18),
            color: Colors.white
          ),
          
        ),
      ),
    );
  }
}


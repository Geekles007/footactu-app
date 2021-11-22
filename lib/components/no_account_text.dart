import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/sign_up/sign_up_screen.dart';
import 'package:renter/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16)
          ),
        ),
        SizedBox(width: 5,),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor
            ),
          ),
        ),
      ],
    );
  }
}
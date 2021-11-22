import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/complete_profile/components/complete_profile_form.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.02,),
              Text(
                "Complete profile",
                style: headingStyle
              ),
              Text(
                "Complete your details or continue \nwith social media.",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              Text(
                'By continuing your confirm that you agree \n with our Term and Condition.',
                textAlign: TextAlign.center,
              )
            ]
          ),
        )
      )
    );
  }
}
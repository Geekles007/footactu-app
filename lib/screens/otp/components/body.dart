import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/otp/components/otp_form.dart';
import 'package:renter/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: SizeConfig.screenHeight * 0.05,),
              Text(
                "OTP Verification",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "We send your code to +7 896 76 ****",
                textAlign: TextAlign.center,
              ),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15,),
              OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1,),
              GestureDetector(
                onTap: () {
                  // Resend the code
                },
                child: Text("Resend OTP code", 
                style: TextStyle(decoration: TextDecoration.underline),),
              )
            ]
          )
        )
      )
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => 
          Text("00:${value.toInt()}",
          style: TextStyle(color: kPrimaryColor),),
          onEnd: () {},
        )
      ],
    );
  }
}


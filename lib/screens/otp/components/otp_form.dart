import 'package:flutter/material.dart';
import 'package:renter/components/default_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/home/home_screen.dart';
import 'package:renter/size_config.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode p2FocusNode;
  FocusNode p3FocusNode;
  FocusNode p4FocusNode;

  @override
  void initState() { 
    super.initState();
    p2FocusNode = FocusNode();
    p3FocusNode = FocusNode();
    p4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    p2FocusNode.dispose();
    p3FocusNode.dispose();
    p4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if(value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: getProportionateScreenWidth(60 ),
                child: TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: p2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60 ),
                child: TextFormField(
                  focusNode: p2FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: p3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60 ),
                child: TextFormField(
                  focusNode: p3FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    nextField(value: value, focusNode: p4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(60 ),
                child: TextFormField(
                  focusNode: p4FocusNode,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24),
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    p4FocusNode.unfocus();
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.15,),
          DefaultButton(
            text: "Continue",
            press: () {
              Navigator.popAndPushNamed(context, HomeScreen.routeName);
            },
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:renter/components/default_button.dart';
import 'package:renter/components/form_error.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/complete_profile/complete_profile_screen.dart';
import 'package:renter/size_config.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirmPassword;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20)
        ),
        child: Column(
          children: <Widget>[
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConfPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            FormError(errors: errors,),
            SizedBox(height: getProportionateScreenHeight(40),),
            DefaultButton(
              text: "Continue",
              press: () {
                if(_formKey.currentState.validate()) {
                  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
              },
            )
          ],
        ),
      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => confirmPassword = newValue,
      onChanged: (value) {
        if(password == confirmPassword && errors.contains(kMatchPassError)) {
          setState(() {
            errors.remove(kMatchPassError); 
          });
        }
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError)) {
          return "";
        } else if(password != value && !errors.contains(kMatchPassError)) {
          setState(() {
            errors.add(kMatchPassError);
            return "";
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if(value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError); 
          });
        } else if(value.length >= 8 && errors.contains  (kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError); 
          });
        }
        password = value;
        return null;
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError); 
          });
        } else if(value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError); 
          });
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email  = newValue,
      onChanged: (value) {
        if(value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError); 
          });
        } else if(emailValidatorRegExp.hasMatch(value) && errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError); 
          });
        }
      },
      validator: (value){
        if(value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError); 
          });
        } else if(!emailValidatorRegExp.hasMatch(value) && !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError); 
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email ",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
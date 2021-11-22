import 'package:flutter/material.dart';
import 'package:renter/components/default_button.dart';
import 'package:renter/components/form_error.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/otp/otp_screen.dart';
import 'package:renter/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  void addError(String error) {
    if(!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError(String error) {
    if(errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30),),
          buildAddressFormField(),
          FormError(errors: errors,),
          SizedBox(height: getProportionateScreenHeight(40),),
          DefaultButton(
            text: "Continue",
            press: () {
              if(_formKey.currentState.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
          keyboardType: TextInputType.text,
          onSaved: (newValue) => address  = newValue,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kAddressNullError)) {
              setState(() {
                removeError(kAddressNullError); 
              });
            }
            return null;
          },
          validator: (value){
            if(value.isEmpty && !errors.contains(kAddressNullError)) {
              setState(() {
                addError(kAddressNullError); 
              });
            } 
            return null;
          },
          decoration: InputDecoration(
            labelText: "Address",
            hintText: "Enter your address ",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
          keyboardType: TextInputType.number,
          onSaved: (newValue) => phoneNumber  = newValue,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
              setState(() {
                removeError(kPhoneNumberNullError); 
              });
            } 
            return null;
          },
          validator: (value){
            if(value.isEmpty && !errors.contains(kPhoneNumberNullError)) {
              setState(() {
                addError(kPhoneNumberNullError); 
              });
            } 
            return null;
          },
          decoration: InputDecoration(
            labelText: "Phone number",
            hintText: "Enter your phone number ",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
          keyboardType: TextInputType.text,
          onSaved: (newValue) => lastName  = newValue,
          decoration: InputDecoration(
            labelText: "Last name",
            hintText: "Enter your last name ",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
          keyboardType: TextInputType.text,
          onSaved: (newValue) => firstName  = newValue,
          onChanged: (value) {
            if(value.isNotEmpty && errors.contains(kNamelNullError)) {
              setState(() {
                removeError(kNamelNullError); 
              });
            } 
          },
          validator: (value){
            if(value.isEmpty && !errors.contains(kNamelNullError)) {
              setState(() {
                addError(kNamelNullError); 
              });
            } 
            return null;
          },
          decoration: InputDecoration(
            labelText: "First name",
            hintText: "Enter your first name ",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        );
  }
}
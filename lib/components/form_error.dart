import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => formErrorText(error: errors[index])
    ));
  }

  Row formErrorText({String error}) {
    return Row(
    children: <Widget>[
      SvgPicture.asset("assets/icons/001-remove.svg",
        width: getProportionateScreenWidth(14),
        height: getProportionateScreenHeight(14)
      ),
      SizedBox(
        width: getProportionateScreenWidth(10)
      ),
      Text(error)
    ],
  );
  }
}
import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.7,
      height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        onChanged: (value) {
          // make function for this 
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: "Search an event",
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(12)
          )
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/size_config.dart';

class TitleAndViewMore extends StatelessWidget {
  const TitleAndViewMore({
    Key key, this.more = false, this.title, this.press,
  }) : super(key: key);

  final bool more;
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title, 
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: getProportionateScreenWidth(17),
              color: kTextColor
            ),
          ),
          if(more)
            GestureDetector(
              onTap: press,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "View more",
                    style: TextStyle(
                        color: kSecondaryColor
                    ),
                  ),
                  Icon(Icons.chevron_right, color: kSecondaryColor)
                ],
              ),
            )
        ],
      ),
    );
  }
}
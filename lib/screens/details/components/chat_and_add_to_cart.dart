import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/constants.dart';


class ChatAndAddToCart extends StatelessWidget {
  const ChatAndAddToCart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton.icon(
            onPressed: () {}, 
            icon: SvgPicture.asset("assets/icons/shopping-bag.svg", height: 18), 
            label: Text(
              "Add to cart",
              style: TextStyle(
                color: Colors.white
              ),
            )
          )
        ],
      ),
    );
  }
}

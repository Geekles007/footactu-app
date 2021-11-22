import 'package:flutter/material.dart';
import 'package:renter/size_config.dart';

class StandingHeader extends StatelessWidget {
  const StandingHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
              "Teams",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(15)
              )
          ),
        ),
        Container(
          width: getProportionateScreenWidth(120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                  "MP",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(15)
                  )
              ),
              Text(
                  "+/-",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(15)
                  )
              ),
              Text(
                  "Pts",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(15)
                  )
              )
            ],
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/group.dart';
import 'package:renter/screens/standing/components/standing_header.dart';
import 'package:renter/screens/standing/components/standing_item.dart';
import 'package:renter/size_config.dart';

class Standing extends StatelessWidget {
  const Standing({
    Key key,
    this.group
  }) : super(key: key);

  final Group group;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(getProportionateScreenWidth(10)),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kPrimaryColor,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: Color(0xFF12153D).withOpacity(0.8)
              )
            ]
        ),
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenWidth(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Group A",
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(15)
                  )
              ),
              Divider(),
              StandingHeader(),
              Divider(),
              Column(
                children: [1,2,3,4].map((item) => StandingItem()).toList(),
              )
            ],
          ),
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/news.dart';
import 'package:renter/size_config.dart';

class MainNews extends StatelessWidget {
  final News news;
  const MainNews({
    Key key,
    this.news
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(320),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/etoo.jpg"),
                fit: BoxFit.cover,
                alignment: Alignment.center
            )
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black26
                ),
              ),
            ),
            Positioned(
              bottom: getProportionateScreenHeight(15),
              left: getProportionateScreenHeight(15),
              width: SizeConfig.screenWidth * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Eto'o new coach of national cameroon team",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: getProportionateScreenWidth(26)
                      ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                  Text(
                      "20-02-2021",
                      style: TextStyle(
                          color: kSecondaryColor,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  SizedBox(height: getProportionateScreenHeight(10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

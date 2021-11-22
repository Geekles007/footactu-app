import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/stadium.dart';
import 'package:renter/size_config.dart';

class StadiumCard extends StatelessWidget {
  const StadiumCard({
    Key key,
    this.stadium
  }) : super(key: key);

  final Stadium stadium;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
                style: BorderStyle.solid,
                color: kPrimaryLightColor.withOpacity(.7),
                width: 1.0
            ),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(230),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage((stadium.image == null || stadium.image == "") ? "assets/images/no_image.jpg" : stadium.image),
                        fit: BoxFit.cover,
                        alignment: Alignment.center
                    )
                ),
              ),
              Text(
                  stadium.name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: getProportionateScreenHeight(23)
                  )
              ),
              Text(
                  stadium.location,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: getProportionateScreenHeight(17),
                      color: kSecondaryColor
                  )
              ),
              Text(
                  "${stadium.place_number} places",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: getProportionateScreenHeight(20),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

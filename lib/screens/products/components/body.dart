import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/components/search_box.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/product.dart';
import 'package:renter/screens/details/details_screen.dart';
import 'package:renter/screens/products/components/category_list.dart';
import 'package:renter/screens/products/components/product_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          Categorylist(),
          SizedBox(height: kDefaultPadding / 2,),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index]
                        )
                      ));
                    }
                  ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

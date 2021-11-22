import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:renter/constants.dart';
import 'package:renter/models/product.dart';
import 'package:renter/screens/details/components/chat_and_add_to_cart.dart';
import 'package:renter/screens/details/components/list_of_colors.dart';
import 'package:renter/screens/details/components/product_poster.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Hero(
                    tag: "${product.id}",
                    child: ProductPoster(
                      size: size, 
                      image: product.image
                    ),
                  ),
                ),
                // ListOfColors(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  child: Text(
                    product.description,
                    style: TextStyle(
                      color: kTextColor
                    ),
                  ),
                ),
                SizedBox(height: kDefaultPadding,)
              ],
            ),
          ),
          ChatAndAddToCart()
        ],
      ),
    );
  }
}

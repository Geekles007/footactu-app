import 'package:flutter/material.dart';
import 'package:renter/models/news.dart';
import 'package:renter/size_config.dart';
import 'package:renter/constants.dart';

class NewsCard extends StatelessWidget {
  final News news;
  const NewsCard({
    Key key,
    this.news
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: getProportionateScreenHeight(145),
                height: getProportionateScreenHeight(145),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(news.image),
                        fit: BoxFit.cover,
                        alignment: Alignment.center
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        news.title,
                        maxLines: 2,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: getProportionateScreenWidth(15)
                        )
                    ),
                    SizedBox(height: getProportionateScreenHeight(5)),
                    Text(
                        news.description,
                        maxLines: 3,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(13)
                        )
                    ),
                    SizedBox(height: getProportionateScreenHeight(5)),
                    Text(
                        news.date,
                        style: TextStyle(
                            color: kSecondaryColor,
                            fontWeight: FontWeight.w600
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
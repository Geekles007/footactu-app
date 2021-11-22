import 'package:flutter/material.dart';
import 'package:renter/components/default_button.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/sign_in/sign_in_screen.dart';
import 'package:renter/screens/splash/components/splash_content.dart';
import 'package:renter/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashs = [
    {
      "text": "Welcome and let's live our passion for football ^_^ ?",
      "image": "assets/images/illustration_2.png"
    },
    {
      "text": "Have a look on your matches",
      "image": "assets/images/illustration_1.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashs.length,
                itemBuilder: (context, index) => 
                  SplashContent (
                    text: splashs[index]['text'],
                    image: splashs[index]['image']
                  )
              )
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashs.length, (index) => buildDot(index)),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index ) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3)
      ),
    );
  }
}

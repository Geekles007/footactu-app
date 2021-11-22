import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renter/screens/cup/cup_screen.dart';
import 'package:renter/screens/news/news_screen.dart';
import 'package:renter/screens/products/products_screen.dart';
import 'package:renter/screens/profile/profile_screen.dart';
import 'package:renter/screens/stats/stats_screen.dart';
import 'package:renter/size_config.dart';

import '../../../constants.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: kPrimaryColor);
  static List<Widget> _widgetOptions = <Widget>[
    NewsScreen(),
    StatsScreen(),
    CupScreen(),
    ProductsScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 0,
            onPressed: () {
              setState((){
                _selectedIndex = 2;
              });
            },
            child: Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  border: Border.all(color: (_selectedIndex == 2) ? kSecondaryColor : Colors.white, width: 4),
                  shape: BoxShape.circle
              ),
              child: Image(
                width: getProportionateScreenHeight(50),
                fit: BoxFit.contain,
                image: AssetImage(
                    'assets/images/caf.webp'
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/icons/002-newspaper.svg'),
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/icons/003-pie-chart.svg'),
            ),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: Image(
                image: AssetImage('assets/images/caf.webp'),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/icons/001-soccer-jersey.svg'),
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              child: SvgPicture.asset('assets/icons/001-user.svg'),
            ),
            label: 'Players',
          )
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: kTextColor,
        selectedItemColor: kSecondaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}




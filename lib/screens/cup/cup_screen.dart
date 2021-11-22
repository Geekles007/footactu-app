import 'package:flutter/material.dart';
import 'package:renter/constants.dart';
import 'package:renter/controllers/TabsController.dart';

class CupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabsCup.length,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: kPrimaryColor,
            leading: Icon(Icons.sports_soccer, color: Colors.white,),
            title: Text('CUP',style: TextStyle(fontSize: 16.0)),
            bottom: PreferredSize(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicatorColor: Colors.white,
                tabs: tabsCup,
              ),
              preferredSize: Size.fromHeight(30.0)),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.filter_list, color: Colors.white),
                    onPressed: () {}
                ),
              ],
            ),
            body: TabBarView(
              children: tabsCupView,
            ),
          ),
        );
  }
}

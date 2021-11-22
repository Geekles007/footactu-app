import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:renter/constants.dart';
import 'package:renter/screens/stats/components/body.dart';
import 'package:renter/size_config.dart';

class StatsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Statistics"),
              backgroundColor: kPrimaryColor,
              bottom: TabBar(
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                tabs: [
                  buildContainer(title: "Goals"),
                  buildContainer(title: "Assists"),
                  buildContainer(title: "Red Cards"),
                ],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.filter_list, color: Colors.white),
                    onPressed: () {}
                )
              ],
            ),
            body: Body()
        ),
      )
    );
  }

  Container buildContainer({title}) {
    return Container(
      height: getProportionateScreenHeight(45),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
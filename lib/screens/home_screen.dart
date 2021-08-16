import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_grab/Components/logo_container.dart';
import 'package:food_grab/Components/popular_item.dart';
import 'package:food_grab/Components/rounded_container.dart';
import 'package:food_grab/Components/top_week_container.dart';
import 'package:food_grab/Components/user_account_container.dart';
import 'package:food_grab/constents.dart';
import 'package:food_grab/screens/order_screen.dart';

import '../ExampleData.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, secondaryColor])),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [LogoContainer(), UserContainer()],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s grab',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[700]),
                    ),
                    Text(
                      'Something 🍰',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ContainerTopWeek(
                title: "Party Cake",
                stars: "5.0",
                image: 'assets/images/girl_party.png',
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Popular',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RoundedContainer(
                      number: foodData.length.toString(),
                      width: 15,
                      height: 10,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 320,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    itemCount: foodData.length,
                    itemBuilder: (context, index) {
                      return PopularItemList(
                        title: foodData[index].title,
                        image: foodData[index].image,
                        percent: foodData[index].percent,
                        category: foodData[index].category,
                        price: foodData[index].price,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderScreen()));
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

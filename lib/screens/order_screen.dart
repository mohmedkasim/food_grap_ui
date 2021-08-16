import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_grab/Components/logo_container.dart';
import 'package:food_grab/Components/rounded_container.dart';
import 'package:food_grab/Components/user_account_container.dart';
import 'package:food_grab/constents.dart';

class OrderScreen extends StatefulWidget {
  static const String id = "order_screen";
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 350,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // LogoContainer(),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: CircleAvatar(
                            child: Icon(Icons.arrow_back_outlined),
                          ),
                        ),
                        SizedBox(height: 40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Now Your",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  "order",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                Image.asset(
                                  'assets/images/logo_cupcake.png',
                                  width: 40,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RoundedContainer(
                              number: "2x",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Cupcake Choc",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Mcdonald",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Total: \$",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "36",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(15)),
                      color: secondaryColor,
                    ),
                    width: MediaQuery.of(context).size.width / 3,
                    height: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UserContainer(),
                          SizedBox(height: 10),
                          Text(
                            'In Progress:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'assets/images/mcdonalds.png',
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                            endIndent: 20,
                            indent: 20,
                          ),
                          Text('Last order: ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    bottom: 10.0,
                                    right: 5.0,
                                    left: 5.0),
                                child: Image.asset(
                                  'assets/images/meiji.jpeg',
                                  width: 40,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: secondaryColor),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 35, horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.my_location,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ana House, London",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Place of delivery")
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 10),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10-15 min',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 10),
                                  Text('Delivery time')
                                ])
                          ]),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.grey,
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/delivery.jpg',
                                  width: 70,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Richhard Ray',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  SizedBox(height: 5),
                                  Text('Food Delivery',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12))
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orangeAccent),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Confirm Order",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange[200]),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Icon(
                            Icons.credit_card,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

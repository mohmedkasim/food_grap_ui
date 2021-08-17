import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_grab/Components/orderDelivery_container.dart';
import 'package:food_grab/Components/order_button.dart';
import 'package:food_grab/Components/order_pricing.dart';
import 'package:food_grab/Components/order_status_container.dart';

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
              children: [OrderPricing(), OrderStatus()],
            ),
            SizedBox(
              height: 30,
            ),
            OrderDelivery(
              deliveryName: "Richhard Ray",
              placeDelivery: "Ana House, London",
              timeDelivery: "10-15 min",
              imageDelivery: "/assets/images/delivery.jpg",
            ),
            SizedBox(height: 20),
            OrderButton(
              onPress: () {},
            )
          ],
        ),
      )),
    );
  }
}

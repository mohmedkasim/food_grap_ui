import 'package:flutter/material.dart';
import 'package:food_grab/Components/user_account_container.dart';
import '../constents.dart';

class OrderStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15)),
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
                        top: 10.0, bottom: 10.0, right: 5.0, left: 5.0),
                    child: Image.asset(
                      'assets/images/meiji.jpeg',
                      width: 40,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

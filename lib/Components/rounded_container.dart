import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String number;

  const RoundedContainer({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber[200]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
        child: Text(
          number,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

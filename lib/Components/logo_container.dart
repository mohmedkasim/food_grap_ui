import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/logo_cupcake.png',
          width: 30,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Caketo',
          style: TextStyle(fontFamily: "pacifico", fontSize: 20),
        ),
      ],
    );
  }
}

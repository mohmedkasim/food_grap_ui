import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PopularItemList extends StatelessWidget {
  final String title;
  final String category;
  final String price;
  final String percent;
  final String image;
  final Function onPressed;

  const PopularItemList(
      {Key key,
      this.title,
      this.category,
      this.price,
      this.percent,
      this.image,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      image,
                      width: 130,
                      height: 180,
                      fit: BoxFit.fitHeight,
                    )),
                SizedBox(height: 10),
                Text(
                  title ?? 'cake name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                Row(
                  children: [
                    Text(
                      '${category ?? "category"} - ${price ?? "price"}',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    Icon(
                      FontAwesomeIcons.dollarSign,
                      size: 10,
                      color: Colors.grey[400],
                    )
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.smile,
                      color: Colors.green[700],
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '${percent ?? "-"}%',
                      style: TextStyle(
                        color: Colors.green[700],
                        fontSize: 15,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

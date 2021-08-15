import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                colors: [Colors.white, Color.fromRGBO(238, 240, 244, 1)])),
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
                  children: [
                    Row(
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
                          style:
                              TextStyle(fontFamily: "pacifico", fontSize: 20),
                        ),
                      ],
                    ),
                    Icon(FontAwesomeIcons.solidBell)
                  ],
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
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCount()
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 300,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    primary: false,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return PopularItemList();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PopularItemList extends StatelessWidget {
  final String title;
  final String category;
  final String price;
  final String percent;
  final String image;

  const PopularItemList(
      {Key key,
      this.title,
      this.category,
      this.price,
      this.percent,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                    'assets/images/cupcake_blueberr.jpg',
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
              Text(
                '${category ?? "category"} - ${price ?? "price"}',
                style: TextStyle(color: Colors.grey[400]),
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
    );
  }
}

class ContainerTopWeek extends StatelessWidget {
  final String stars;
  final String title;
  final String image;

  const ContainerTopWeek({Key key, this.stars, this.title, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.orange[300]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(stars),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Top of the week',
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(height: 5),
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 13),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 40,
            bottom: 1,
            child: Image.asset(
              image,
              width: MediaQuery.of(context).size.width / 4,
            ),
          )
        ],
      ),
    );
  }
}

class PopularCount extends StatelessWidget {
  final String number;

  const PopularCount({Key key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber[200]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '16',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

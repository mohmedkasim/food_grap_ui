import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_grab/screens/home_screen.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MainStructure extends StatefulWidget {
  @override
  _MainStructureState createState() => _MainStructureState();
}

class _MainStructureState extends State<MainStructure> {
  final currentScreen = [HomeScreen()];
  var _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [HomeScreen(), HomeScreen(), HomeScreen(), HomeScreen()],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: SalomonBottomBar(
              unselectedItemColor: Colors.grey,
              currentIndex: _currentIndex,
              onTap: (i) => setState(() {
                _currentIndex = i;
              }),
              items: [
                SalomonBottomBarItem(
                    icon: Icon(FontAwesomeIcons.home), title: Text("Home")),
                SalomonBottomBarItem(
                    icon: Icon(FontAwesomeIcons.user), title: Text("User")),
                SalomonBottomBarItem(
                    icon: Icon(FontAwesomeIcons.bookmark),
                    title: Text("My List")),
                SalomonBottomBarItem(
                    icon: Icon(FontAwesomeIcons.bell),
                    title: Text("notification"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

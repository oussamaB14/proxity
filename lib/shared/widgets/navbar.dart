import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floating Navigation Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoScreen(),
    );
  }
}

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  _DemoScreenState createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  int currentIndex = 0;

  var pageList = <Widget>[
    const Center(
      child: Text("Home Page"),
    ),
    const Center(
      child: Text("Feed Page"),
    ),
    Center(
      child: Text("Cart Page"),
    ),
    Center(
      child: Text("Profile Page"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[140],
      appBar: AppBar(
        elevation: 0.0,
        toolbarHeight: 80.0,
        backgroundColor: Colors.grey[200],
        title: Text(
          "Floating Navigation Bar",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.black87,
        barHeight: 50.0,
        barWidth: MediaQuery.of(context).size.width,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 10.0,
        ),
        iconSize: 20.0,
        indicatorColor: Colors.white,
        indicatorHeight: 4,
        indicatorWidth: 14.0,
        items: [
          NavBarItems(
            icon: EvaIcons.homeOutline,
            title: "Home",
          ),
          NavBarItems(
            icon: EvaIcons.search,
            title: "Search",
          ),
          NavBarItems(
            icon: EvaIcons.shoppingCartOutline,
            title: "Cart",
          ),
          NavBarItems(
            icon: EvaIcons.activity,
            title: "Profile",
          ),
        ],
        onChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}

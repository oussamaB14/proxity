import 'package:flutter/material.dart';
import '../../views/home/home.dart';
import '../../views/messages/messages.dart';
import '../../views/plus/plus.dart';
import '../../views/profile/profile.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int index = 0;
  final screens = [
    const ProxityHome(),
    const MessagesPage(),
    const Profile(),
    const MyPlus(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(
            icon: Icon(Icons.verified_user), label: 'profile'),
        NavigationDestination(icon: Icon(Icons.message), label: 'messages'),
        NavigationDestination(icon: Icon(Icons.plus_one), label: 'plus'),
      ]),
    );
  }
}

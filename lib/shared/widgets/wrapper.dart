import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proxity/shared/colors.dart';
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
  bool isSelected = false;
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
      bottomNavigationBar: NavigationBar(
          // elevation: 50.0,
          height: 65,
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
                this.index = index;
                isSelected = true;
              }),
          destinations: [
            const NavigationDestination(
                icon: Icon(Iconsax.home),
                selectedIcon: Icon(Iconsax.home_11),
                label: 'home'),
            const NavigationDestination(
              icon: Icon(Iconsax.messages),
              selectedIcon: Icon(Iconsax.messages_15),
              label: 'messages',
            ),
            NavigationDestination(
                icon: Container(
                  width: 50,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Icon(
                      Iconsax.add,
                      color: Colors.white,
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      // shadowColor: Colors.grey,
                      backgroundColor: MyColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // side: BorderSide(width: 2, color: Colors.grey),
                    ),
                  ),
                ),
                selectedIcon: const Icon(Iconsax.messages_15),
                label: 'SELL'),
            const NavigationDestination(
                icon: Icon(EvaIcons.person),
                selectedIcon: Icon(Iconsax.user1),
                label: 'profile'),
            const NavigationDestination(
                icon: Icon(EvaIcons.square),
                selectedIcon: Icon(Iconsax.square1),
                label: 'plus'),
          ]),
    );
  }
}

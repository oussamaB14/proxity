import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../views/home/home.dart';
import '../../views/messages/messages.dart';
import '../../views/plus/plus.dart';
import '../../views/product/addProduct.dart';
import '../../views/profile/profile.dart';
import '../colors.dart';

class MySingleNav extends StatefulWidget {
  const MySingleNav({super.key});

  @override
  State<MySingleNav> createState() => _MySingleNavState();
}

class _MySingleNavState extends State<MySingleNav> {
  bool isSelected = false;

  int _selectedindex = 0;
  final screens = [
    const ProxityHome(),
    const MessagesPage(),
    const AddProduct(),
    const Profile(),
    const MyPlus(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
          elevation: 20.0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedindex,
          selectedItemColor: MyColors.primaryColor,
          unselectedItemColor: MyColors.shadow,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(TernavIcons.lightOutline.home),
                label: 'Home',
                activeIcon: Icon(TernavIcons.light.home)),
            BottomNavigationBarItem(
                icon: Icon(TernavIcons.lightOutline.chat),
                label: 'Messages',
                activeIcon: Icon(TernavIcons.light.chat)),
            BottomNavigationBarItem(
                icon: SizedBox(
                  width: 45,
                  height: 45,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/addproduct");
                    },
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      // shadowColor: Colors.grey,
                      backgroundColor: MyColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // side: BorderSide(width: 2, color: Colors.red),
                    ),
                    child: const Icon(
                      Iconsax.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                label: 'Vendez'),
            BottomNavigationBarItem(
                icon: Icon(TernavIcons.lightOutline.profile),
                label: 'Profile',
                activeIcon: Icon(TernavIcons.light.profile)),
            const BottomNavigationBarItem(
                icon: Icon(Iconsax.square), label: 'Plus'),
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:proxity/shared/colors.dart';
import 'package:proxity/views/product/addProduct.dart';
import '../../views/home/home.dart';
import '../../views/messages/messages.dart';
import '../../views/plus/plus.dart';
import 'package:ternav_icons/ternav_icons.dart';
import '../../views/profile/profile.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
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
    return Scaffold(
      body: screens[_selectedindex],
      bottomNavigationBar: SizedBox(
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
      ),
      // bottomNavigationBar: NavigationBar(
      //     // elevation: 50.0,
      //     height: 65,
      //     selectedIndex: index,
      //     onDestinationSelected: (index) => setState(() {
      //           this.index = index;
      //           isSelected = true;
      //         }),
      //     destinations: [
      //       const NavigationDestination(
      //           icon: Icon(Iconsax.home),
      //           selectedIcon: Icon(Iconsax.home_11),
      //           label: 'home'),
      //       const NavigationDestination(
      //         icon: Icon(Iconsax.messages),
      //         selectedIcon: Icon(Iconsax.messages_15),
      //         label: 'messages',
      //       ),
      //       NavigationDestination(
      //           icon: SizedBox(
      //             width: 50,
      //             height: 50,
      //             child: OutlinedButton(
      //               onPressed: () {},
      //               style: OutlinedButton.styleFrom(
      //                 padding: const EdgeInsets.all(0),
      //                 // shadowColor: Colors.grey,
      //                 backgroundColor: MyColors.primaryColor,
      //                 shape: RoundedRectangleBorder(
      //                   borderRadius: BorderRadius.circular(50),
      //                 ),
      //                 // side: BorderSide(width: 2, color: Colors.grey),
      //               ),
      //               child: const Icon(
      //                 Iconsax.add,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //           selectedIcon: const Icon(Iconsax.messages_15),
      //           label: 'SELL'),
      //       const NavigationDestination(
      //           icon: Icon(EvaIcons.person),
      //           selectedIcon: Icon(Iconsax.user1),
      //           label: 'profile'),
      //       const NavigationDestination(
      //           icon: Icon(EvaIcons.square),
      //           selectedIcon: Icon(Iconsax.square1),
      //           label: 'plus'),
      //     ]),
    );
  }
}

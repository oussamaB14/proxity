import 'package:flutter/material.dart';
import 'package:proxity/routes.dart';
import 'package:proxity/shared/theme.dart';
import 'package:proxity/shared/widgets/dot.dart';
import 'package:proxity/shared/widgets/nav.dart';
import 'package:proxity/shared/widgets/navbar.dart';
import 'package:proxity/shared/widgets/tryhere.dart';
import 'package:proxity/shared/widgets/wrapper.dart';
import 'package:sizer/sizer.dart';

class Runner extends StatefulWidget {
  const Runner({super.key});

  @override
  State<Runner> createState() => _RunnerState();
}

class _RunnerState extends State<Runner> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: MyThemes().lightTheme,
          // darkTheme: MyThemes().darkTheme,
          home: const MyNavBar(),
          routes: routes,
        );
      },
    );
  }
}

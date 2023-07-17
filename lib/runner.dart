import 'package:flutter/material.dart';
import 'package:proxity/routes.dart';
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
          theme: ThemeData.light(),
          // darkTheme: MyThemes().darkTheme,
          home: const MyNavBar(),
          routes: routes,
        );
      },
    );
  }
}

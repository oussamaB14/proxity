import 'package:flutter/material.dart';
import 'package:proxity/views/home/home.dart';
import 'package:proxity/views/messages/messages.dart';
import 'package:proxity/views/plus/plus.dart';
import 'package:proxity/views/profile/profile.dart';

final Map<String, WidgetBuilder> routes = {
  "/home": (context) => const ProxityHome(),
  "/messages":(context) => const MessagesPage(),
  "/plus":(context) => const MyPlus(),
  "/profile":(context) => const Profile(),
};

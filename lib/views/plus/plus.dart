import 'package:flutter/material.dart';

class MyPlus extends StatefulWidget {
  const MyPlus({super.key});

  @override
  State<MyPlus> createState() => _MyPlusState();
}

class _MyPlusState extends State<MyPlus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).popAndPushNamed("/wrapper"),
        ),
        title: const Text('Plus page'),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                // children: [Text('Plus page')],
                ),
          ),
        ),
      ),
    );
  }
}

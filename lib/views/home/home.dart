import 'package:flutter/material.dart';

class ProxityHome extends StatefulWidget {
  const ProxityHome({super.key});

  @override
  State<ProxityHome> createState() => _ProxityHomeState();
}

class _ProxityHomeState extends State<ProxityHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Proxity'),
      ),
      body: const SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [Text('Discover')],
        ),
      )),
    );
  }
}

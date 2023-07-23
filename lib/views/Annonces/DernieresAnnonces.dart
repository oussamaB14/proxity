import 'package:flutter/material.dart';

class DernieresAnnonces extends StatefulWidget {
  const DernieresAnnonces({super.key});

  @override
  State<DernieresAnnonces> createState() => _DernieresAnnoncesState();
}

class _DernieresAnnoncesState extends State<DernieresAnnonces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Dernières annonces'),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                // children: [Text('Notification page')],
                ),
          ),
        ),
      ),
    );
  }
}

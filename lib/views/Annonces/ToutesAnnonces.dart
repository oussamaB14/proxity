import 'package:flutter/material.dart';

class ToutesAnnonces extends StatefulWidget {
  const ToutesAnnonces({super.key});

  @override
  State<ToutesAnnonces> createState() => _ToutesAnnoncesState();
}

class _ToutesAnnoncesState extends State<ToutesAnnonces> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Touts les annonces'),
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

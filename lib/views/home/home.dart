import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        titleSpacing: 0.0,
        leadingWidth: 60,
        centerTitle: false,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 45,
                height: 45,
              ),
            ),
          ],
        ),
        title: Text('Proxity',
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayMedium,
              fontSize: 45,
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => Navigator.of(context).pushNamed("/notifications"),
          ),
        ],
      ),

      // endDrawer:
      // Drawer(

      // ),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Kishan",
      home: ComingSoonPage(),
    );
  }
}

class ComingSoonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            "I am \nComing Soon",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(color: Colors.white, fontSize: 80),
          ),
        ),
      ),
    );
  }
}

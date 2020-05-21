import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
      backgroundColor: Color(0xff400082) ?? Color(0xff00bdaa) ?? Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  "Hi, I am\nKishan",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.londrinaOutline(
                      color: Color(0xfffe346e) ??
                          Color(0xff400082) ??
                          Colors.white,
                      fontSize: 140),
                ),
              ),
            ),
            // Expanded(
            //   flex: 3,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         "A ",
            //         style: GoogleFonts.londrinaOutline(
            //             fontSize: 70,
            //             color: Color(0xfffe346e) ?? Color(0xfff1ebbb)),
            //       ),
            //       FadeAnimatedTextKit(
            //         text: ["Developer", "Designer", "Student"],
            //         textStyle: GoogleFonts.londrinaSolid(
            //             fontSize: 60,
            //             color: Color(0xfffe346e) ?? Color(0xfff1ebbb)),
            //       )
            //     ],
            //   ),
            // ),
            Text(
              "Find me on:",
              style: GoogleFonts.londrinaSolid(
                  fontSize: 25, color: Color(0xfff1ebbb)),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        color: Color(0xfff1ebbb),
                        iconSize: 27,
                        icon: FaIcon(FontAwesomeIcons.github),
                        onPressed: () {
                          launch('https://github.com/kishanhitk');
                        }),
                    // IconButton(
                    //     icon: FaIcon(FontAwesomeIcons.facebook),
                    //     onPressed: () {}),
                    IconButton(
                        color: Color(0xfff1ebbb),
                        iconSize: 27,
                        icon: FaIcon(FontAwesomeIcons.instagram),
                        onPressed: () {
                          launch('https://instagram.com/jst_kishan');
                        }),
                    IconButton(
                        color: Color(0xfff1ebbb),
                        iconSize: 27,
                        icon: FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: () {
                          launch('https://www.linkedin.com/in/kishanju');
                        }),
                    IconButton(
                        color: Color(0xfff1ebbb),
                        iconSize: 27,
                        icon: FaIcon(FontAwesomeIcons.twitter),
                        onPressed: () {
                          launch('https://twitter.com/jst_kishan');
                        }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

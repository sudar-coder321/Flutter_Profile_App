import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_app/themes/color.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProfileApp',
      theme: MyTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/profilepic.png", width: 100, height: 100),
            Text(
              'Sudarshan.M.S',
              style: GoogleFonts.oswald(
                textStyle:
                    TextStyle(color: Colors.teal[700], letterSpacing: .5),
                fontSize: 36.0,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.lato(
                fontStyle: FontStyle.italic,
                textStyle:
                    TextStyle(color: Colors.brown[800], letterSpacing: .5),
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
                thickness: 3,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text('+91-8825657561',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    )),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text('sudar.sumu@gmail.com',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    )),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_cursor/fancy_cursor.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'dart:async';

class Custom extends StatefulWidget {
  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF9A17CF), Colors.purple],
            stops: [0.0, 1.0]),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => MyApp()));
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  type: MaterialType.transparency,
                  child: Text(
                    "Use permutations to speak using your iris",
                    style: GoogleFonts.montserrat(
                        fontSize: 50,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    padding: EdgeInsets.all(10.0),
                    child: Material(
                      type: MaterialType.transparency,
                      child: Text("Your message appears here",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF9A17CF),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
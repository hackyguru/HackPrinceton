import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fancy_cursor/fancy_cursor.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';


class Toilet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF9A17CF), Colors.purple],
                stops: [0.0, 1.0]),
          ),
      
    );
  }
}
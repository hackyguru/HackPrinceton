import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'stats.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Welcome, caretaker!", style: GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 30),),
            ),
                     SizedBox(height:20),
            GestureDetector(
                onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => PieChartSample2()));         
              },
                          child: Container(
                    width: 500,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            colors: [Color(0xFF9A17CF).withOpacity(0.8), Color(0xFF9D00FF)])),
                    child: Center(
    
                                                child: Text("Patient Statistics",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                        )),
            ),
                     SizedBox(height:20),
            GestureDetector(
              onTap: null,
                          child: Container(
                    width: 500,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                            colors: [Color(0xFF9A17CF).withOpacity(0.8), Color(0xFF9D00FF)])),
                    child: Center(
                        child: Text("Live video feed",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20))),
                  ),
            ),
          ],),
        )
      ),
    );
  }
}
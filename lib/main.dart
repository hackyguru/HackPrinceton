import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:mobileapp/stats.dart';
import 'package:qr/qr.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	//Given Title
	title: 'Flutter Demo',
	debugShowCheckedModeBanner: false,
	//Given Theme Color
	theme: ThemeData(
	primarySwatch: Colors.indigo,
	),
	//Declared first page of our app
	home: ScanQR(),
	);
}
}

class ScanQR extends StatefulWidget {
@override
_ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {

String qrCodeResult = "Scan the QR code displayed in the desktop app";

@override
Widget build(BuildContext context) {
	return Scaffold(
	body: Container(
		padding: EdgeInsets.all(20),
	child: Column(
	mainAxisAlignment: MainAxisAlignment.center,
	crossAxisAlignment: CrossAxisAlignment.stretch,
	children: [

    Lottie.asset('assets/voilet_eye.json', height: 150, width: 150),
    SizedBox(
      height:30
    ),

	//Message displayed over here
	Text(
		"Caretaker app",
		style: GoogleFonts.montserrat(fontSize: 25.0, fontWeight: FontWeight.bold),
		textAlign: TextAlign.center,
	),
  SizedBox(height:50),
	Text(
		qrCodeResult,
		style: GoogleFonts.montserrat(
		fontSize: 15.0,
		),
		textAlign: TextAlign.center,
	),
	SizedBox(
		height: 70.0,
	),

	//Button to scan QR code
	FlatButton(
		padding: EdgeInsets.all(15),
		onPressed: () async {
		String codeSanner = await BarcodeScanner.scan(); //barcode scnner
		Navigator.push(context, MaterialPageRoute(builder: (_) => Dashboard()));
		},
		child: Text("Open QR Scanner",style: TextStyle(color: Colors.indigo[900]),),
		//Button having rounded rectangle border
		shape: RoundedRectangleBorder(
		side: BorderSide(color: Colors.indigo[900]),
		borderRadius: BorderRadius.circular(20.0),
		),
	),

		],
		),
	),
	);
}
}


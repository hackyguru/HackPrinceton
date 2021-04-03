
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady(() {
    final win = appWindow;
    final initialSize = Size(600, 450);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Para Iris";
    win.show();
  });
}

const borderColor = Colors.transparent;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: WindowBorder(
                color: borderColor, width: 1, child: Row(children: [Home()]))));
  }
}

const backgroundStartColor = Color(0xFFF6F2FF);
const backgroundEndColor = Color(0xFFE9E2F8);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: MouseRegion(
          //cursor: SystemMouseCursors.none,
              child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [backgroundStartColor, backgroundEndColor],
                    stops: [0.0, 1.0]),
              ),
              child: Column(children: [
                WindowTitleBarBox(
                    child: Row(children: [
                  Expanded(child: MoveWindow()),
                  //WindowButtons()
                ])),

                // The home body starts here
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        color: Color(0xFF9A17CF),
                        size: 35,
                      ),
                      onPressed: null,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      child: Lottie.asset('assets/voilet_eye.json')),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.qr_code_rounded,
                            color: Color(0xFF9A17CF),
                            size: 35,
                          ),
                          onPressed: null,
                        ),
                        SizedBox(width: 10)
                      ],
                    ),
                  ]),
                ),
                SizedBox(height: 20),
                Text("Use your eyes to navigate through the options and blink 3 times to select",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w500, fontSize: 25)),
                SizedBox(height: 50),
                Column(
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Request for rest room",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Request for rest room",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        
                      ]
                    ),
                    SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Request for rest room",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Request for rest room",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        
                      ]
                    ),
                                        SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Request for rest room",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        Container(
                          width: 500,
                          height: 120,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(colors: [Color(0xFF9A17CF), Colors.purple])
                        ),
                        child: Center(child: Text("Custom request",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w500, fontSize: 25))),
                        ),
                        
                      ]
                    ),
                    SizedBox(height: 25),
                    Text("The screen turns off automatically after 3 minutes of inactivity",textAlign: TextAlign.center, style: GoogleFonts.montserrat(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w500, fontSize: 15)),
                  ]
                )
              ])),
        ));
  }
}

final buttonColors = WindowButtonColors(
    iconNormal: Color(0xFF805306),
    mouseOver: Color(0xFFE29EF0),
    mouseDown: Color(0xFF805306),
    iconMouseOver: Color(0xFF805306),
    iconMouseDown: Color(0xFFE29EF0));

final closeButtonColors = WindowButtonColors(
    mouseOver: Color(0xFFD32F2F),
    mouseDown: Color(0xFFB71C1C),
    iconNormal: Color(0xFF805306),
    iconMouseOver: Colors.white);

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}

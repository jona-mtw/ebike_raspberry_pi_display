import 'package:flutter/material.dart';

import 'pages/navigation.dart';
import 'pages/telemetery.dart';
import 'pages/settings.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

var customDecoration = BoxDecoration(
  color: Color.fromARGB(255, 119, 101, 227),
  border: BoxBorder.all(color: Color.fromARGB(255, 55, 41, 98), width: 3),
  borderRadius: BorderRadius.all(Radius.circular(30)),
);
var fontStyle = GoogleFonts.kodchasan(fontSize: 20, color: Colors.white);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: RotatedBox(
          quarterTurns: 1,
          child: Scaffold(
            body: TabBarView(
              children: [
                RotatedBox(quarterTurns: 3, child: HomePage()),
                RotatedBox(quarterTurns: 3, child: NavigationPage()),
                RotatedBox(quarterTurns: 3, child: TelemeteryPage()),
                RotatedBox(quarterTurns: 3, child: SettingsPage()),
              ],
            ),
            bottomNavigationBar: CustomSideNavigationBar(),
          ),
        ),
      ),
    );
  }
}

class CustomSideNavigationBar extends StatelessWidget {
  const CustomSideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 50,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 10),
        child: TabBar(
          tabs: [
            Tab(
              icon: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: Icon(Icons.home, size: 35),
                ),
              ),
            ),
            Tab(
              icon: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: Icon(Icons.navigation_rounded, size: 35),
                ),
              ),
            ),
            Tab(
              icon: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: Icon(Icons.insert_chart, size: 35),
                ),
              ),
            ),
            Tab(
              icon: RotatedBox(
                quarterTurns: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, top: 10, bottom: 10),
                  child: Icon(Icons.settings, size: 35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const new({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              children: [
                Text(
                  "My E-Bike",
                  style: GoogleFonts.kodchasan(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "$currentTime",
                  style: GoogleFonts.kodchasan(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: customDecoration,
                      child: Center(
                        child: Text(
                          "nav - also shows directions",
                          style: fontStyle,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: customDecoration,
                                  child: Center(
                                    child: Text("Hello", style: fontStyle),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: customDecoration,
                                  child: Center(
                                    child: Text("Hello", style: fontStyle),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: customDecoration,
                                  child: Center(
                                    child: Text("Hello", style: fontStyle),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  decoration: customDecoration,
                                  child: Center(
                                    child: Text("Hello", style: fontStyle),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

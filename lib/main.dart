import 'package:flutter/material.dart';

import 'pages/navigation.dart';
import 'pages/telemetery.dart';
import 'pages/settings.dart';

void main() {
  runApp(const MyApp());
}

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
    return Container(
      color: Colors.white,
      child: TabBar(
        tabs: [
          Tab(
            icon: RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.home, size: 30),
            ),
          ),
          Tab(
            icon: RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.navigation_rounded, size: 30),
            ),
          ),
          Tab(
            icon: RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.insert_chart, size: 30),
            ),
          ),
          Tab(
            icon: RotatedBox(
              quarterTurns: 3,
              child: Icon(Icons.settings, size: 30),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      body: Center(
        child: Text("Home", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

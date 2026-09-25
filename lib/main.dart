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
        child: Scaffold(
          body: Row(
            children: [
              CustomSideNavigationBar(),
              Expanded(
                flex: 5,
                child: TabBarView(
                  children: [
                    HomePage(),
                    NavigationPage(),
                    TelemeteryPage(),
                    SettingsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Home"));
  }
}

class CustomSideNavigationBar extends StatelessWidget {
  const CustomSideNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
        color: Colors.white,
        child: TabBar(
          tabs: [
            Container(
              padding: EdgeInsets.all(10),
              child: RotatedBox(
                quarterTurns: 3,
                child: Tab(icon: Icon(Icons.home, size: 30)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RotatedBox(
                quarterTurns: 3,
                child: Tab(icon: Icon(Icons.navigation_rounded, size: 30)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RotatedBox(
                quarterTurns: 3,
                child: Tab(icon: Icon(Icons.insert_chart, size: 30)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: RotatedBox(
                quarterTurns: 3,
                child: Tab(icon: Icon(Icons.settings, size: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

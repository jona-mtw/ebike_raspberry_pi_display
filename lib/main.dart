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
    return MaterialApp(home: Scaffold(body: MainBody()));
  }
}

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    NavigationPage(),
    TelemeteryPage(),
    SettingsPage(),
  ];

  bool _extended = false;
  final List<Widget> _menuState = [Icon(Icons.menu), Icon(Icons.close)];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
          mainAxisAlignment: .center,
          extended: _extended,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _extended = !_extended;
                  });
                },
                icon: _menuState[_extended ? 1 : 0],
              ),
              Visibility(
                visible: _extended,
                child: Container(
                  padding: EdgeInsets.only(right: 175),
                  child: Text(""),
                ),
              ),
            ],
          ),
          destinations: [
            NavigationRailDestination(
              icon: Icon(Icons.home),
              label: Text("Home"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.navigation),
              label: Text("Navigation"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.insert_chart),
              label: Text("Telemetery"),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.settings),
              label: Text("Settings"),
            ),
          ],
        ),
        Expanded(child: _pages[_selectedIndex]),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Home"));
  }
}

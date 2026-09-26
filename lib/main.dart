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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 31, 59),
        body: MainBody(),
      ),
    );
  }
}

class MainBody extends StatefulWidget {
  const MainBody({super.key});

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  int _selectedIndex = 0;
  int _oldSelectedIndex = 0;
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
              _oldSelectedIndex = _selectedIndex;
              _selectedIndex = index;
            });
          },
          leading: IconButton(
            onPressed: () {
              setState(() {
                _extended = !_extended;
              });
            },
            icon: _menuState[_extended ? 1 : 0],
          ),
          destinations: [
            NavigationRailDestination(
              padding: EdgeInsets.all(5),
              icon: Icon(Icons.home, size: 30),
              label: Text("Home"),
            ),
            NavigationRailDestination(
              padding: EdgeInsets.all(5),
              icon: Icon(Icons.navigation, size: 30),
              label: Text("Navigation"),
            ),
            NavigationRailDestination(
              padding: EdgeInsets.all(5),
              icon: Icon(Icons.insert_chart, size: 30),
              label: Text("Telemetery"),
            ),
            NavigationRailDestination(
              padding: EdgeInsets.all(5),
              icon: Icon(Icons.settings, size: 30),
              label: Text("Settings"),
            ),
          ],
        ),
        Expanded(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),

            transitionBuilder: (child, animation) {
              bool verticalDirection = _selectedIndex > _oldSelectedIndex;
              double dy = 1;

              if (verticalDirection) {
                dy = -1;
              } else {
                dy = 1;
              }

              final offsetAnimation =
                  Tween<Offset>(begin: Offset(0, dy), end: Offset.zero).animate(
                    CurvedAnimation(parent: animation, curve: Curves.easeInOut),
                  );

              return SlideTransition(position: offsetAnimation, child: child);
            },

            child: KeyedSubtree(
              key: ValueKey(_selectedIndex),
              child: _pages[_selectedIndex],
            ),
          ),
        ),
      ],
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

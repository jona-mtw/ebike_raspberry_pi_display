import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      body: Container(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Settings",
                    style: GoogleFonts.kodchasan(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: NavRail()),
          ],
        ),
      ),
    );
  }
}

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int _selectedIndex = 0;

  List<Widget> pages = [
    GeneralSettings(),
    BikeSettings(),
    TelemeterySettings(),
    AlertSettings(),
    ConnectionSettings(),
    DeveloperSettings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceAround,
            children: [
              CustomInkwell(
                text: "General",
                index: 0,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
              CustomInkwell(
                text: "Bike",
                index: 1,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
              CustomInkwell(
                text: "Telemetry",
                index: 2,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
              CustomInkwell(
                text: "Alert",
                index: 3,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
              CustomInkwell(
                text: "Connection",
                index: 4,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
              CustomInkwell(
                text: "Developer",
                index: 5,
                onTap: (index) => setState(() => _selectedIndex = index),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
            child: pages[_selectedIndex],
          ),
        ),
      ],
    );
  }
}

class CustomInkwell extends StatefulWidget {
  final String text;
  final int index;
  final Function(int) onTap;

  const CustomInkwell({
    super.key,
    required this.text,
    required this.index,
    required this.onTap,
  });

  @override
  State<CustomInkwell> createState() => _CustomInkwellState();
}

class _CustomInkwellState extends State<CustomInkwell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(widget.index),
      child: Container(
        width: 150,
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text(widget.text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("General", style: TextStyle(color: Colors.white)),
    );
  }
}

class BikeSettings extends StatefulWidget {
  const BikeSettings({super.key});

  @override
  State<BikeSettings> createState() => _BikeSettingsState();
}

class _BikeSettingsState extends State<BikeSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Bike", style: TextStyle(color: Colors.white)),
    );
  }
}

class TelemeterySettings extends StatefulWidget {
  const TelemeterySettings({super.key});

  @override
  State<TelemeterySettings> createState() => _TelemeterySettingsState();
}

class _TelemeterySettingsState extends State<TelemeterySettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Telemetry", style: TextStyle(color: Colors.white)),
    );
  }
}

class AlertSettings extends StatefulWidget {
  const AlertSettings({super.key});

  @override
  State<AlertSettings> createState() => _AlertSettingsState();
}

class _AlertSettingsState extends State<AlertSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Alert", style: TextStyle(color: Colors.white)),
    );
  }
}

class ConnectionSettings extends StatefulWidget {
  const ConnectionSettings({super.key});

  @override
  State<ConnectionSettings> createState() => _ConnectionSettingsState();
}

class _ConnectionSettingsState extends State<ConnectionSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Connections", style: TextStyle(color: Colors.white)),
    );
  }
}

class DeveloperSettings extends StatefulWidget {
  const DeveloperSettings({super.key});

  @override
  State<DeveloperSettings> createState() => _DeveloperSettingsState();
}

class _DeveloperSettingsState extends State<DeveloperSettings> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Developer", style: TextStyle(color: Colors.white)),
    );
  }
}

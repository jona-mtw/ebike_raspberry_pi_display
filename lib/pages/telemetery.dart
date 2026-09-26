import 'package:flutter/material.dart';

class TelemeteryPage extends StatelessWidget {
  const TelemeteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      body: Center(
        child: Text("Telemetery", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

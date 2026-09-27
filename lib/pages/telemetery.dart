import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelemeteryPage extends StatelessWidget {
  const TelemeteryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 31, 59),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Telemetery",
              style: GoogleFonts.kodchasan(fontSize: 30, color: Colors.white),
            ),
            Row(children: [Column(), Column()]),
          ],
        ),
      ),
    );
  }
}

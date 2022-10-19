import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_variable/pages/auth_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('TechVariable',
                style: GoogleFonts.cairo(
                    fontSize: 48, fontWeight: FontWeight.w500)),
            Text('Take your idea from plan to product to profit 2x faster.',
                style: GoogleFonts.alegreya(
                    fontSize: 14, fontWeight: FontWeight.normal)),
            const SizedBox(height: 100),
            SizedBox(
              height: 70,
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      padding: const EdgeInsets.all(20)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AuthPage()));
                  },
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.oxygen(fontSize: 24),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

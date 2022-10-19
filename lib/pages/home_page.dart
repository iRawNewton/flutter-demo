import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text(
          'Welcome to TechVariable',
          style: GoogleFonts.acme(fontSize: 24),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                child: Image.asset('assets/images/techVariable.png'),
              ),
              Text(
                'TechVariable',
                style: GoogleFonts.acme(fontSize: 48),
              ),
              const SizedBox(height: 50),
              Text('Signed in as: ${user.email!}'),
              MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(context, '/');
                },
                color: Colors.black,
                child: const Text('Sign Out',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

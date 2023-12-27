import 'package:e_commerce/features/widgets/back_arrow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackArrow(),
        centerTitle: true,
        title: Text('Profile',
            style: GoogleFonts.oswald(
                letterSpacing: 1, fontSize: 20, color: Colors.black)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Email: ${user?.email ?? "Not logged in"}',
              style: TextStyle(fontSize: 18),
            ),
            // Add other profile information you want to display
          ],
        ),
      ),
    );
  }
}

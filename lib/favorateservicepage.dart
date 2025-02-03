import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorateservicepage extends StatelessWidget {
  const Favorateservicepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(size: 30, color: Colors.white, Icons.chevron_left)),
        title: Text(
          style: GoogleFonts.workSans(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          'Change Password',
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
    );
  }
}

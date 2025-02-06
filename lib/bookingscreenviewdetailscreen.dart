import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookingscreenviewdetailscreen extends StatelessWidget {
  final String status;

  const Bookingscreenviewdetailscreen({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(color: Colors.white, Icons.chevron_left)),
        titleSpacing: -15,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Text(
                status,
                style: GoogleFonts.workSans(
                    color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 70,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Check Status',
                  style: GoogleFonts.workSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Editprofilescreen extends StatelessWidget {
  const Editprofilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: -10,
          centerTitle: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(size: 30, color: Colors.white, Icons.chevron_left)),
          title: Text(
            style: GoogleFonts.workSans(
                fontSize: 19, fontWeight: FontWeight.w500, color: Colors.white),
            'Edit Profile',
          ),
          backgroundColor: Color(0xff3D56A2),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Stack(
                    children: [
                      CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://randomuser.me/api/portraits/men/85.jpg') // Change this to NetworkImage if needed
                          ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Editprofilescreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.white, // Border color
                                width: 4.0, // Border width
                              ),
                            ),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff3D56A2),
                              radius: 18,
                              child: Icon(Icons.add_a_photo_outlined,
                                  color: Colors.white, size: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}

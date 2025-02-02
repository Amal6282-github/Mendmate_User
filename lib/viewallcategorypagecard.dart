import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Viewallcategorypagecard extends StatelessWidget {
  final ImageProvider serviceimg;
  final String title;
  const Viewallcategorypagecard(
      {super.key, required this.title, required this.serviceimg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 7)
            ],
            color: Color(0xffF0F0FA),
            borderRadius: BorderRadiusDirectional.circular(15)),
        child: Column(
          children: [
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: serviceimg,
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black
                                .withOpacity(0.9), // Adjust transparency
                            BlendMode.dstATop,
                          )))),
            )),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              height: 30,
              width: double.infinity,
              child: Center(
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

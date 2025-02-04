import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/loadingscreen2.dart';

class Loadingscreen1 extends StatelessWidget {
  const Loadingscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset('assets/Circleloading2.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: SvgPicture.asset('assets/Grouploading1.svg'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Welcome to Mendmate',
                style: GoogleFonts.workSans(
                    fontSize: 22,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Hold tight! We are finding the best services for you...',
                style: GoogleFonts.workSans(
                    fontSize: 15,
                    decoration: TextDecoration.none,
                    color: Color(0xff9AA0A5),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  SvgPicture.asset('assets/Paginationloading1.svg'),
                  Padding(
                    padding: const EdgeInsets.only(left: 130),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loadingscreen2()));
                        },
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.workSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3D56A2)),
                        )),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

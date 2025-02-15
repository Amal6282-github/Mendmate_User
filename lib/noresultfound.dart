import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Noresultfound extends StatelessWidget {
  const Noresultfound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: SvgPicture.asset('assets/Circlenosearchfound.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 180),
                    child: SvgPicture.asset('assets/Groupnosearchfound.svg'),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'No Matching Views',
                    style: GoogleFonts.workSans(
                        fontSize: 22,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text(
                  'we couldn’t find anything related to your search',
                  style: GoogleFonts.workSans(
                      letterSpacing: 1,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Color(0xff9AA0A5),
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      backgroundColor: Color(0xff3C549F)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                      style: GoogleFonts.workSans(
                          fontWeight: FontWeight.w600, color: Colors.white),
                      'Back To Home'),
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/loadingscreen4.dart';

class Loadingscreen3 extends StatelessWidget {
  const Loadingscreen3({super.key});

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
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: SvgPicture.asset('assets/Circleloading2.svg'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 120),
                  child: SvgPicture.asset('assets/Grouploading3.svg'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Book the Appointment',
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
                'Book your services on your own time',
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
                  Container(
                      width: 70,
                      child: SvgPicture.asset('assets/Paginationloading3.svg')),
                  Expanded(child: SizedBox()),
                  Container(
                    width: 60,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 5),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        Loadingscreen4(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                              ));
                        },
                        child: Text(
                          'Skip',
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

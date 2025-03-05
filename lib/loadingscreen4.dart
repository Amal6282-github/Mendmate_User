import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/loginpage.dart';

class Loadingscreen4 extends StatelessWidget {
  const Loadingscreen4({super.key});

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
                  padding: const EdgeInsets.symmetric(vertical: 93),
                  child: SvgPicture.asset('assets/Grouploading4.svg'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Payment Gateway',
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
                'Choose the preferable options of payment and get best service',
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
                      child: SvgPicture.asset('assets/Paginationloading4.svg')),
                  Expanded(child: SizedBox()),
                  Container(
                    width: 60,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 5),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      LoginPage(),
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                            ),
                            (route) => false,
                          );
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

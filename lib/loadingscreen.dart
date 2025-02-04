import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:project_mendmate_user/loadingscreen1.dart';

class Loadingscreen extends StatefulWidget {
  const Loadingscreen({super.key});

  @override
  _LoadingscreenState createState() => _LoadingscreenState();
}

class _LoadingscreenState extends State<Loadingscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loadingscreen1()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 30),
                  child: Row(
                    children: [
                      Image.asset(
                          height: 100,
                          width: 100,
                          'assets/logo-transparent-png.png'),
                      Text(
                        'Mendmate',
                        style: GoogleFonts.workSans(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Lottie.asset(
                      'assets/Animation - 1738678379122.json',
                      width: 300,
                      height: 300,
                      repeat: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 20),
                    child: Lottie.asset(
                      'assets/Animation - 1738679509919.json',
                      width: 300,
                      height: 300,
                      repeat: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Center(
                      child: Text("Loading...",
                          style: GoogleFonts.workSans(
                              color: Color(0xff90979D),
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

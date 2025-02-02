import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:project_mendmate_user/bookingfilterpage.dart';
import 'package:project_mendmate_user/categoriescreen.dart';
import 'package:project_mendmate_user/homepagebigcard.dart';
import 'package:project_mendmate_user/homepagesmallcard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Color(0xffF6F6F6),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          width: 30,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
                              color: Colors.white)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                    width: 20,
                                    height: 20,
                                    child:
                                        SvgPicture.asset('assets/marker.svg')),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Expanded(
                                    child: Container(),
                                  ),
                                ),
                                Expanded(
                                    child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 13),
                                  child: Container(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Marquee(
                                        text:
                                            '670331 Morazha Art & Science Collage...',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: Color(0xff6C757D)),
                                        scrollAxis:
                                            Axis.horizontal, // Can be vertical

                                        blankSpace: 20.0,
                                        pauseAfterRound: Duration(seconds: 1),
                                        startPadding: 10.0,
                                        accelerationDuration:
                                            Duration(seconds: 1),
                                        accelerationCurve: Curves.linear,
                                        decelerationDuration:
                                            Duration(milliseconds: 500),
                                        decelerationCurve: Curves.easeOut,
                                      ),
                                    ),
                                  ),
                                )),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    child: SvgPicture.asset(
                                        color: Color(0xff757D85),
                                        'assets/location-crosshairs.svg'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                            height: 50,
                            width: 55,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10),
                                color: Colors.white),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: InkWell(
                                    onTap: () {},
                                    child: SvgPicture.asset(
                                        width: 22,
                                        height: 22,
                                        color: Color(0xff3D56A2),
                                        'assets/search (1).svg'),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1C1F34),
                            fontSize: 19),
                        'Category'),
                    Expanded(child: SizedBox()),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Categoriescreen(),
                              ));
                        },
                        child: Text(
                            style: GoogleFonts.poppins(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C757D)),
                            'View All'))
                  ],
                ),
                Expanded(
                  child: GridView.count(
                      childAspectRatio: .85,
                      crossAxisSpacing: 2,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Electrician',
                                    serviceimg: SvgPicture.asset(
                                        'assets/plug-circle-bolt.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Electritian',
                            serviceicon:
                                SvgPicture.asset('assets/plug-circle-bolt.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Security',
                                    serviceimg:
                                        SvgPicture.asset('assets/security.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Security',
                            serviceicon:
                                SvgPicture.asset('assets/security.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Painting',
                                    serviceimg: SvgPicture.asset(
                                        'assets/carpentry.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Painting',
                            serviceicon: SvgPicture.asset('assets/painter.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Plumbing',
                                    serviceimg:
                                        SvgPicture.asset('assets/plumber.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Plumber',
                            serviceicon: SvgPicture.asset('assets/plumber.svg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Carpentry',
                                    serviceimg: SvgPicture.asset(
                                        'assets/carpentry.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                              title: 'Carpentry',
                              serviceicon:
                                  SvgPicture.asset('assets/carpentry.svg')),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(
                                    catergoryname: 'Cieling ',
                                    serviceimg: SvgPicture.asset(
                                        'assets/people-roof.svg'),
                                  ),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Cieling',
                            serviceicon:
                                SvgPicture.asset('assets/people-roof.svg'),
                          ),
                        ),
                      ]),
                )
              ],
            ),
          ),
        )),
        Container(
          height: 275,
          color: Color(0xffF0F0FA),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff1C1F34),
                              fontSize: 19),
                          'Recent Services'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 3,
                          serviceName: 'Plumbing Work',
                          workerName: 'David james',
                          serviceimage1: AssetImage('assets/3-250x250.webp'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 1.5,
                          serviceName: 'Cieling Work',
                          workerName: 'Thomas antony',
                          serviceimage1:
                              AssetImage('assets/pop-false-ceiling-work.jpg'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 3.5,
                          serviceName: 'CCTV Fixing',
                          workerName: 'Stephen Menon',
                          serviceimage1: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 4.4,
                          serviceName: 'Carpentry Work',
                          workerName: 'Varuhn John',
                          serviceimage1:
                              AssetImage('assets/laminaat-leggen-3.jpg'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 2.8,
                          serviceName: 'CCTV Fixing',
                          workerName: 'john dao',
                          serviceimage1: AssetImage(
                              'assets/electrician-expertly-fixing-cctv-camera-generative-ai_431161-22009.jpg'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 2.3,
                          serviceName: 'Electrical work',
                          workerName: 'Thomas mathew',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 4.3,
                          serviceName: 'Painting Work',
                          workerName: 'Harsh john david',
                          serviceimage1: AssetImage(
                              'assets/Contractor-Recommendation-1536x1024.jpg.webp'),
                          workerimg:
                              AssetImage('assets/no-profile-picture-15257.png'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

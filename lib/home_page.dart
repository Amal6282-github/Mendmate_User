import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:project_mendmate_user/BookingFilterPage.dart';
import 'package:project_mendmate_user/CategoriesScreen.dart';
import 'package:project_mendmate_user/HomePageBigCard.dart';
import 'package:project_mendmate_user/HomePageSmallCard.dart';

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
                                builder: (context) => Categoriesscreen(),
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
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Electritian',
                            serviceimg:
                                AssetImage('assets/Ravinia_Electric.png.webp'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Security',
                            serviceimg: AssetImage(
                                'assets/Depositphotos_282950500_S.jpg'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Painting',
                            serviceimg: AssetImage(
                                'assets/Contractor-Recommendation-1536x1024.jpg.webp'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Plumber',
                            serviceimg: AssetImage('assets/3-250x250.webp'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Carpentry',
                            serviceimg: AssetImage(
                                'assets/When-can-I-return-to-dusty-environments-after-LASIK-Dr-Matthew-Russell-VSON-Laser-Vision-Specialists-Brisbane.webp'),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Bookingfilterpage(),
                                ));
                          },
                          child: Homepagesmallcard(
                            title: 'Cieling',
                            serviceimg:
                                AssetImage('assets/pop-false-ceiling-work.jpg'),
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
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Homepagebigcard(
                          rating: 5,
                          serviceName: 'Electrical work',
                          workerName: 'john dao',
                          serviceimage1:
                              AssetImage('assets/Ravinia_Electric.png.webp'),
                          workerimg: AssetImage(
                              'assets/Depositphotos_282950500_S.jpg'),
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

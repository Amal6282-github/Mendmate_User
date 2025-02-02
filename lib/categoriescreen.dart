import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/bookingfilterpage.dart';
import 'package:project_mendmate_user/viewallcategorypagecard.dart';

class Categoriescreen extends StatelessWidget {
  const Categoriescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(size: 30, color: Colors.white, Icons.chevron_left)),
        title: Text(
          style: GoogleFonts.poppins(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          'Category',
        ),
        backgroundColor: Color(0xff7879CA),
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Electrician',
                          serviceimg: SvgPicture.asset('assets/carpentry.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Electritian',
                  serviceimg: AssetImage('assets/Ravinia_Electric.png.webp'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Security',
                          serviceimg: SvgPicture.asset('assets/carpentry.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Security',
                  serviceimg:
                      AssetImage('assets/Depositphotos_282950500_S.jpg'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Painting',
                          serviceimg: SvgPicture.asset('assets/painter.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
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
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Plumber',
                          serviceimg: SvgPicture.asset('assets/plumber.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Plumber',
                  serviceimg: AssetImage('assets/3-250x250.webp'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Carpentry',
                          serviceimg: SvgPicture.asset('assets/carpentry.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
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
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Cieling',
                          serviceimg: SvgPicture.asset('assets/carpentry.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Cieling',
                  serviceimg: AssetImage('assets/pop-false-ceiling-work.jpg'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Electrician',
                          serviceimg: SvgPicture.asset('assets/painter.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Electritian',
                  serviceimg: AssetImage('assets/Ravinia_Electric.png.webp'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bookingfilterpage(
                          catergoryname: 'Security',
                          serviceimg: SvgPicture.asset('assets/painter.svg'),
                        ),
                      ));
                },
                child: Viewallcategorypagecard(
                  title: 'Security',
                  serviceimg:
                      AssetImage('assets/Depositphotos_282950500_S.jpg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

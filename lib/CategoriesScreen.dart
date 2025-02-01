import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/BookingFilterPage.dart';
import 'package:project_mendmate_user/HomePageSmallCard.dart';

class Categoriesscreen extends StatelessWidget {
  const Categoriesscreen({super.key});

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
                        builder: (context) => Bookingfilterpage(),
                      ));
                },
                child: Homepagesmallcard(
                  title: 'Electritian',
                  serviceimg: AssetImage('assets/Ravinia_Electric.png.webp'),
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
                  serviceimg:
                      AssetImage('assets/Depositphotos_282950500_S.jpg'),
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
                  serviceimg: AssetImage('assets/pop-false-ceiling-work.jpg'),
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
                  title: 'Electritian',
                  serviceimg: AssetImage('assets/Ravinia_Electric.png.webp'),
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

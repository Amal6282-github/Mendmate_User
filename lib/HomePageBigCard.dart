import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepagebigcard extends StatelessWidget {
  final ImageProvider serviceimage1, workerimg;
  final double rating;
  final String serviceName;
  final String workerName;

  const Homepagebigcard({
    Key? key,
    required this.serviceimage1,
    required this.rating,
    required this.serviceName,
    required this.workerName,
    required this.workerimg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(15)),
      width: 250,
      height: 220,
      child: Column(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: serviceimage1)),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  // Adjust width to fit stars
                                  children: List.generate(
                                    5,
                                    (index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(right: 5),
                                        child: Container(
                                          child: index < rating
                                              ? SvgPicture.asset(
                                                  height: 13,
                                                  width: 10,
                                                  color: Color(0xffFFBD00),
                                                  'assets/Star 3.svg')
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xff757D85)),
                                  '$rating')
                            ],
                          ),
                        ),
                        Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                                style: GoogleFonts.robotoSlab(
                                    fontWeight: FontWeight.w400),
                                serviceName)),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: workerimg,
                              ),
                              SizedBox(width: 10),
                              Text(
                                  style: GoogleFonts.poppins(
                                      color: Color(0xff687179),
                                      fontWeight: FontWeight.w500),
                                  workerName),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

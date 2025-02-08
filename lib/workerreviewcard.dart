import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Workerreviewcard extends StatelessWidget {
  final double rating;
  final String reviewdate;
  final String reviewcustomername;
  final String reviewtext;
  final String reviewcustomerimgurl;

  const Workerreviewcard({
    super.key,
    required this.rating,
    required this.reviewdate,
    required this.reviewcustomername,
    required this.reviewtext,
    required this.reviewcustomerimgurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// **User Information Row**
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// Profile Image
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        reviewcustomerimgurl // Replace with actual image
                        ),
                  ),
                  const SizedBox(width: 10),

                  /// Name and Date
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              reviewcustomername,
                              style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Text(
                              reviewdate,
                              style: GoogleFonts.workSans(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child: Row(
                                // Adjust width to fit stars
                                children: List.generate(
                                  5,
                                  (index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 5),
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
                            Text(
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff757D85)),
                                '$rating'),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          reviewtext,
                          style: GoogleFonts.workSans(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 2,
            color: Color(0xffF5F5F5),
          )
        ],
      ),
    );
  }
}

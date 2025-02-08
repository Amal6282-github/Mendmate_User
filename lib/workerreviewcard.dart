import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Workerreviewcard extends StatelessWidget {
  final double rating;
  const Workerreviewcard({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// **User Information Row**
          Row(
            children: [
              /// Profile Image
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/44.jpg", // Replace with actual image
                ),
              ),
              const SizedBox(width: 10),

              /// Name and Date
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Donna Bins",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "02 Dec",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),

              /// Edit Button
            ],
          ),

          const SizedBox(height: 8),

          /// **Star Rating & Score**
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
                        fontWeight: FontWeight.w600, color: Color(0xff757D85)),
                    '$rating')
              ],
            ),
          ),

          const SizedBox(height: 8),

          /// **Review Text**
          const Text(
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet.",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Rateworkerpage extends StatefulWidget {
  final double rating;
  final double WorkerNewrating;
  final String newreviewcammand;
  const Rateworkerpage(
      {super.key,
      required this.rating,
      required this.WorkerNewrating,
      required this.newreviewcammand});

  @override
  State<Rateworkerpage> createState() => _RateworkerpageState();
}

class _RateworkerpageState extends State<Rateworkerpage> {
  double sliderValue = 1.0; // Initial value
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffF6F7F9),
      contentPadding: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Job Image & Title
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "https://media.istockphoto.com/id/1396840742/photo/happy-african-builder-workman-standing-pleased.jpg?s=1024x1024&w=is&k=20&c=HOvK8SYrNvpUgR7I4IdxoMOdaUJ4QC9DL7iZYrEjPMM=", // Replace with actual image URL
                    width: 100,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "David John",
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      Text(
                        "Plumber",
                        style: GoogleFonts.workSans(
                            color: Color(0xff8F959B),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Star Rating",
                        style:
                            GoogleFonts.workSans(fontWeight: FontWeight.w600)),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: Color(0xffEEEEEE),
                ),
                Row(
                  children: [
                    Text(
                      sliderValue
                          .toStringAsFixed(1), // Show only 1 decimal place
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),

                    // Slider Widget
                    Slider(
                      value: sliderValue,
                      min: 1.0,
                      max: 5.0,
                      divisions: 40, // (5.0 - 1.0) / 0.1 = 40 steps
                      label: sliderValue
                          .toStringAsFixed(1), // Show tooltip with value
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value; // Update slider value
                        });
                      },
                      activeColor: Color(0xff5F60B9),
                      inactiveColor: Colors.grey.shade300,
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
                                child: index < (sliderValue - .5)
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Comment",
                        style:
                            GoogleFonts.workSans(fontWeight: FontWeight.w600)),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  color: Color(0xffEEEEEE),
                ),
                SizedBox(height: 8),
                TextField(
                  style: GoogleFonts.workSans(
                      color: Color(0xff6C757D), fontWeight: FontWeight.w500),
                  maxLines: 4, // Allow multiple lines
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.workSans(
                        color: Color(0xff8F959B), fontWeight: FontWeight.w500),
                    hintText: "Write your review about the customer...",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.all(12),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset(
                        height: 15,
                        'assets/times-hexagon.svg',
                        color: Colors.black,
                      ),
                      label: Text(
                        "Cancel",
                        style: GoogleFonts.workSans(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      style: OutlinedButton.styleFrom(
                          fixedSize: Size(120, 35),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Color(0xffF6F7F9))),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        height: 15,
                        'assets/badge-check.svg',
                        color: Colors.white,
                      ),
                      label: Text(
                        "Submit",
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(120, 35),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Color(0xff5F60B9),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

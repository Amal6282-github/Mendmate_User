import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/bookingscreenviewdetailscreen.dart';

class Bookingscreencard extends StatelessWidget {
  final String serviceimagepath;
  final String status;
  final String bookingid;
  final String servicename;
  final String userlocation;
  final String date;
  final String time;
  final String username;
  const Bookingscreencard(
      {super.key,
      required this.status,
      required this.bookingid,
      required this.servicename,
      required this.userlocation,
      required this.date,
      required this.username,
      required this.serviceimagepath,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Image Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Stack(
                  children: [
                    Image.asset(serviceimagepath,
                        width: 280, height: 150, fit: BoxFit.cover),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: (status == "Pending")
                              ? Color(0xffEA2F2F)
                              : (status == "Completed")
                                  ? Color(0xff3CAD5C)
                                  : Color(0xffFD6922),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          status,
                          style: GoogleFonts.workSans(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Details Section
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        servicename,
                        style: GoogleFonts.workSans(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xff5F60B9),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '#ID:  ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              bookingid,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),

                  // Location
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/marker.svg',
                        height: 15,
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(userlocation,
                            style: GoogleFonts.workSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff90989D))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Date & Time
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/calendar.svg',
                        height: 15,
                      ),
                      SizedBox(width: 5),
                      Text(date,
                          style: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff90989D))),
                      Text(' At ',
                          style: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff90989D))),
                      Text(time,
                          style: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Customer Name
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/user (1).svg',
                        height: 15,
                      ),
                      SizedBox(width: 5),
                      Text(
                        username,
                        style: GoogleFonts.workSans(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff90989D)),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Action Buttons
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: status == "Completed" || status == "Accepted",
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(130, 30),
                        backgroundColor: Color(0xff5F60B9),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Bookingscreenviewdetailscreen(
                                      status: status,
                                      rating: 4,
                                      serviceimg: serviceimagepath,
                                      date: date,
                                      time: time,
                                      servicename: servicename,
                                      workeremail: 'Johndaoplumber@gmail.com',
                                      workerlocation:
                                          '670331 Kannur near savitha teatre',
                                      workername: 'John Dao',
                                      bookingid: bookingid,
                                      workerimg:
                                          'https://randomuser.me/api/portraits/women/66.jpg',
                                      statuscolor: (status == "Pending")
                                          ? Color(0xffEA2F2F)
                                          : (status == "Completed")
                                              ? Color(0xff3CAD5C)
                                              : Color(0xffFD6922),
                                      totalprice: '289',
                                    )));
                      },
                      child: const Text('View Details',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: status == "Pending"
                          ? Size(MediaQuery.of(context).size.width - 80, 30)
                          : Size(130, 30),
                      backgroundColor: status == "Pending"
                          ? Color(0xff5F60B9)
                          : Color(0xffF6F7F9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('Cancel',
                        style: status == "Pending"
                            ? TextStyle(color: Colors.white)
                            : TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

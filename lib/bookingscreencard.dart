import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/bookingscreenviewdetailscreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Bookingscreencard extends StatefulWidget {
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
  State<Bookingscreencard> createState() => _BookingscreencardState();
}

class _BookingscreencardState extends State<Bookingscreencard> {
  final supabase = Supabase.instance.client;
  bool isLoading = false;
  Future<void> deleteBooking(String bookingId) async {
    try {
      final user = Supabase.instance.client.auth.currentUser;

      if (user == null) {
        print(" No user is logged in.");
        return;
      }
      setState(() {
        isLoading = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await supabase
          .from('Booking') // Your table name
          .delete()
          .eq('id', bookingId); // Assuming 'id' is the primary key
      print('Booking deleted successfully');
    } catch (error) {
      print('Error fetching: $error');
    } finally {
      setState(() {
        isLoading = false; // Update your state here
      });
    }
  }

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
                    Image.network(widget.serviceimagepath,
                        width: 280, height: 150, fit: BoxFit.cover),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: (widget.status == "Pending")
                              ? Color(0xffEA2F2F)
                              : (widget.status == "Completed")
                                  ? Color(0xff3CAD5C)
                                  : Color(0xffFD6922),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          widget.status,
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
                        widget.servicename,
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
                              widget.bookingid,
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
                        child: Text(widget.userlocation,
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
                      Text(widget.date,
                          style: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff90989D))),
                      Text(' At ',
                          style: GoogleFonts.workSans(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff90989D))),
                      Text(widget.time,
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
                        widget.username,
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
                    visible: widget.status == "Completed" ||
                        widget.status == "Accepted",
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
                                      status: widget.status,
                                      rating: 4,
                                      serviceimg: widget.serviceimagepath,
                                      date: widget.date,
                                      time: widget.time,
                                      servicename: widget.servicename,
                                      workeremail: 'Johndaoplumber@gmail.com',
                                      workerlocation:
                                          '670331 Kannur near savitha teatre',
                                      workername: 'John Dao',
                                      bookingid: widget.bookingid,
                                      workerimg:
                                          'https://randomuser.me/api/portraits/women/66.jpg',
                                      statuscolor: (widget.status == "Pending")
                                          ? Color(0xffEA2F2F)
                                          : (widget.status == "Completed")
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
                      fixedSize: widget.status == "Pending"
                          ? Size(MediaQuery.of(context).size.width - 80, 30)
                          : Size(130, 30),
                      backgroundColor: widget.status == "Pending"
                          ? Color(0xff5F60B9)
                          : Color(0xffF6F7F9),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                    ),
                    onPressed: () {
                      if (isLoading != true) {
                        deleteBooking(widget.bookingid);
                      }
                    },
                    child: isLoading
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : Text('Cancel',
                            style: widget.status == "Pending"
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:project_mendmate_user/fetchdata.dart';
import 'package:project_mendmate_user/globalvariable.dart';

import 'package:project_mendmate_user/noresultfound.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Confirmbooking extends StatefulWidget {
  final String city;
  final String phone;
  final String address;
  final String description;
  final String status;
  final String rating;
  final String category;
  const Confirmbooking(
      {super.key,
      required this.category,
      required this.city,
      required this.phone,
      required this.address,
      required this.description,
      required this.status,
      required this.rating});

  @override
  State<Confirmbooking> createState() => _ConfirmbookingState();
}

class _ConfirmbookingState extends State<Confirmbooking> {
  bool isLoading = false;
  final supabase = Supabase.instance.client;
  Future<void> insertBooking() async {
    try {
      final user = Supabase.instance.client.auth.currentUser;

      if (user == null) {
        print(" No user is logged in.");
        return;
      }

      // Get the logged-in user's UUID

      setState(() {
        isLoading = true; // Update your state here
      });
      UserService userService = UserService();

      servicedetails = await userService.fetchservicedetails(widget.category);
      await Future.delayed(Duration(seconds: 4));
      await Supabase.instance.client
          .from('Booking') // Your table name
          .insert({
        'user_id': user.id.trim(),
        'city': widget.city.trim(),
        'phone': widget.phone.trim(),
        'address': widget.address.trim(),
        'Description': widget.description.trim(),
        'status': widget.status.trim(),
        'Category': widget.category.trim(),
        'rating': selectedRatingGlobal.toString().trim(),
        'image_url': servicedetails!['image_url'].toString().trim()
      });
      print('Data inserted successfully');

      Navigator.pop(context);
      _showPopupsuccessfull(context);
    } catch (error) {
      print('Error inserting: $error');
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => noresultfound()));
    } finally {
      setState(() {
        filterpagedatainserted = true;
        isLoading = false; // Update your state here
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Curved borders
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(45.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset('assets/Check.svg'),
              SizedBox(height: 40),
              Text(
                  style: GoogleFonts.workSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                  'Confirm Booking'),
              SizedBox(
                height: 15,
              ),
              Text(
                  style: GoogleFonts.workSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6C757D)),
                  'Are you sure you want to confirm the booking'),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Cancel Button
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Close dialog
                    },
                    child: Text(
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w600, color: Colors.black),
                        'Cancel'),
                  ),
                  SizedBox(width: 20),
                  // Apply Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3D56A2)),
                    onPressed: () {
                      if (isLoading != true) {
                        insertBooking();
                      }
                    },
                    child: isLoading
                        ? SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ))
                        : Text(
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                            'Apply'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPopupsuccessfull(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Curved borders
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: NeverScrollableScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.all(45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/Check.svg'),
                  SizedBox(height: 40),
                  Text(
                      style: GoogleFonts.workSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      'Booking request Successfully submitted'),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                      style: GoogleFonts.workSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6C757D)),
                      'Thankyou for Choosing Mendmate'),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff3D56A2)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                            'Back to Home'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

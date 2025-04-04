import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:project_mendmate_user/bookingscreencard.dart';
import 'fetchdata.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class Bookingscreen extends StatefulWidget {
  const Bookingscreen({
    super.key,
  });

  @override
  State<Bookingscreen> createState() => _BookingscreenState();
}

class _BookingscreenState extends State<Bookingscreen> {
  String selectedStatus = 'All';
  List<Map<String, dynamic>> bookings = [];
  Map<String, dynamic>? userDetails;
  final supabase = Supabase.instance.client;

  bool isLoading = true;
  bool isLoading1 = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2));
    fetchBooking();

    // Fetch categories initially
    // Listen for real-time updates
  }

  Future<void> fetchBooking() async {
    try {
      final user = Supabase.instance.client.auth.currentUser;

      if (user == null) {
        print(" No user is logged in.");
        return;
      }

      // Get the logged-in user's UUID
      await Future.delayed(Duration(seconds: 2));
      final response = await Supabase.instance.client
          .from('Booking')
          .select('*')
          .eq('user_id', user.id)
          .order('created_at', ascending: false);
      UserService userService = UserService();
      Map<String, dynamic>? data = await userService.fetchUserDetails(user.id);
      if (response.isNotEmpty) {
        setState(() {
          bookings = response;
          userDetails = data;
        });
      }
      print('Data fetched successfully');
    } catch (error) {
      print('Error fetching: $error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Booking',
            style: GoogleFonts.workSans(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Color(0xff3D56A2),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: DropdownButtonFormField<String>(
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black87),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF6F7F9)),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9DAAD0), width: 2)),
                          labelStyle:
                              GoogleFonts.workSans(color: Color(0xff9AA0A5)),
                          labelText: "Sort by",
                          filled: true,
                          fillColor:
                              Color(0xffF6F7F9), // Light background color
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      dropdownColor: Color(0xffF6F7F9),
                      items: [
                        'All',
                        'Pending',
                        'Accepted',
                        'Completed',
                      ]
                          .map((city) =>
                              DropdownMenuItem(value: city, child: Text(city)))
                          .toList(),
                      onChanged: (newStatus) {
                        setState(() {
                          isLoading = true; // Start loading
                        });

                        // Wait for 2 seconds before updating UI
                        Future.delayed(Duration(seconds: 2), () {
                          setState(() {
                            selectedStatus = newStatus!;
                            isLoading = false; // Stop loading
                          });
                        });
                      }),
                ),
                isLoading1
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Colors.blueGrey,
                      ))
                    : isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                                color:
                                    Colors.blueGrey)) // 🔄 Show loading spinner
                        : bookings.isEmpty
                            ? Center(
                                child: Text(
                                    "No bookings available")) // 🚫 If no data
                            : ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: bookings.length,
                                itemBuilder: (context, index) {
                                  final booking = bookings[index];
                                  String formattedTime = DateFormat('hh:mm a')
                                      .format(
                                          DateTime.parse(booking["created_at"])
                                              .toLocal());

                                  String formattedDate =
                                      DateTime.parse(booking["created_at"])
                                          .toLocal()
                                          .toString()
                                          .split(' ')[0];
                                  return Visibility(
                                    visible: selectedStatus == 'All' ||
                                        booking['status'] == selectedStatus,
                                    child: Bookingscreencard(
                                        status:
                                            booking["status"].toString().trim(),
                                        bookingid:
                                            booking["id"].toString().trim(),
                                        servicename: booking["Category"]
                                            .toString()
                                            .trim(),
                                        userlocation:
                                            booking["city"].toString().trim(),
                                        date: formattedDate,
                                        username: userDetails!['name']
                                            .toString()
                                            .trim(),
                                        serviceimagepath: booking['image_url'],
                                        time: formattedTime),
                                  );
                                },
                              )
              ],
            ),
          ),
        ));
  }
}

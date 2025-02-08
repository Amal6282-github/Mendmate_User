import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/checkstatuspage.dart';
import 'package:project_mendmate_user/workerreviewcard.dart';

class Bookingscreenviewdetailscreen extends StatelessWidget {
  final String status;
  final Color statuscolor;
  final String totalprice;

  final double rating;
  final String serviceimg;
  final String date;
  final String time;
  final String servicename;
  final String workeremail;
  final String workerlocation;
  final String workername;
  final String bookingid;
  final String workerimg;

  const Bookingscreenviewdetailscreen(
      {super.key,
      required this.status,
      required this.rating,
      required this.serviceimg,
      required this.date,
      required this.time,
      required this.servicename,
      required this.workeremail,
      required this.workerlocation,
      required this.workername,
      required this.bookingid,
      required this.workerimg,
      required this.statuscolor,
      required this.totalprice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(color: Colors.white, Icons.chevron_left)),
        titleSpacing: -15,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 30,
                child: Text(
                  status,
                  style: GoogleFonts.workSans(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => Checkstatuspage(
                            bookingid: bookingid,
                            newbookingtime: time,
                            newbookingdate: date,
                            acceptbookingtime: '7.30 AM',
                            acceptbookingdate: 'Feb 7',
                            bookingcompletedtime: '10.30AM',
                            bookingcompleteddate: 'Feb 9',
                          ));
                },
                child: Text(
                  'Check Status',
                  style: GoogleFonts.workSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Booking ID & Service Info
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Text(
                        'Booking ID:',
                        style: GoogleFonts.workSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C757D)),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Text('ID : #',
                          style: GoogleFonts.workSans(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5F60B9))),
                      Text(bookingid,
                          style: GoogleFonts.workSans(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff5F60B9)))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    thickness: 1,
                  ),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            servicename,
                            style: GoogleFonts.workSans(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Date :  ',
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text(date,
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Color(0xff6C757D),
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Time :  ',
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text(time,
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Color(0xff6C757D),
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          serviceimg, // Replace with actual image URL
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'About Worker',
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                // Customer Info Card
                Card(
                  color: Color(0xffF6F7F9),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  workerimg), // Replace with actual user image
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    workername,
                                    style: GoogleFonts.workSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(servicename,
                                          style: GoogleFonts.workSans(
                                              fontSize: 14,
                                              color: Color(0xff868D94),
                                              fontWeight: FontWeight.w500)),
                                    ],
                                  ),
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
                                                      const EdgeInsets.only(
                                                          right: 5),
                                                  child: Container(
                                                    child: index < rating
                                                        ? SvgPicture.asset(
                                                            height: 13,
                                                            width: 10,
                                                            color: Color(
                                                                0xffFFBD00),
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
                                            '$rating')
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/envelope.svg',
                              height: 13,
                              color: Color(0xff535565),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(workeremail,
                                  style: GoogleFonts.workSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff90989D))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/marker.svg',
                              height: 14,
                              color: Color(0xff535565),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(workerlocation,
                                  style: GoogleFonts.workSans(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff90989D))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/Calling.svg',
                                color: Colors.white,
                              ),
                              label: Text(
                                "Call",
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(130, 35),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Color(0xff5F60B9),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                              ),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/Chat.svg',
                                color: Colors.black,
                              ),
                              label: Text("Chat",
                                  style: TextStyle(color: Colors.black)),
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(130, 35),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  side: BorderSide(color: Color(0xffF6F7F9))),
                            ),
                          ],
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Rate Worker',
                              style: GoogleFonts.workSans(
                                  color: Color(0xff8586C8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Payment Details',
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                // Customer Info Card
                Card(
                  color: Color(0xffF6F7F9),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'ID',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 180,
                            ),
                            Text('#',
                                style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5F60B9))),
                            Text(bookingid,
                                style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff5F60B9)))
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          child: Row(
                            children: [
                              Text(
                                'Method',
                                style: GoogleFonts.workSans(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 130,
                              ),
                              Container(
                                width: 90,
                                height: 40,
                                child: DropdownButtonFormField<String>(
                                  style: GoogleFonts.workSans(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff979DA4)),
                                  decoration: InputDecoration(
                                      enabled: false,
                                      filled: true,
                                      focusedBorder: InputBorder.none,
                                      fillColor: Color(
                                          0xffF6F7F9), // Light background color
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 12.0, horizontal: 16.0),
                                      border: InputBorder.none),
                                  dropdownColor: Color(0xffF6F7F9),
                                  items: [
                                    'UPI',
                                    'Cash',
                                  ]
                                      .map((method) => DropdownMenuItem(
                                          value: method, child: Text(method)))
                                      .toList(),
                                  onChanged: (value) {
                                    print("Selected method: $value");
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        Row(
                          children: [
                            Text(
                              'Status',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Text(status,
                                style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: statuscolor))
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 170,
                            ),
                            Icon(
                              Icons.currency_rupee,
                              size: 17,
                            ),
                            Text(
                              totalprice,
                              style: GoogleFonts.workSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff979DA4)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Workerreviewcard(
                  rating: 4.5,
                  reviewdate: '01 Dec',
                  reviewcustomername: 'Laura Walker',
                  reviewtext:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet',
                  reviewcustomerimgurl:
                      'https://randomuser.me/api/portraits/men/78.jpg',
                ),
                Workerreviewcard(
                  rating: 3.5,
                  reviewdate: '03 Dec',
                  reviewcustomername: 'Adriel Effertz',
                  reviewtext:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet',
                  reviewcustomerimgurl:
                      'https://randomuser.me/api/portraits/men/94.jpg',
                ),
                Workerreviewcard(
                  rating: 3.1,
                  reviewdate: '09 Dec',
                  reviewcustomername: 'Cielo Champlin',
                  reviewtext:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet',
                  reviewcustomerimgurl:
                      'https://randomuser.me/api/portraits/women/66.jpg',
                ),
                Workerreviewcard(
                  rating: 2.5,
                  reviewdate: '05 Dec',
                  reviewcustomername: 'Kailey Willms',
                  reviewtext:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet',
                  reviewcustomerimgurl:
                      'https://media.gettyimages.com/id/463164037/photo/las-vegas-nv-adult-film-actress-dani-daniels-attends-the-2014-avn-adult-entertainment-expo-at.jpg?s=612x612&w=0&k=20&c=Jcvvva9xFDAb0mMHE8Qg4Zw8IliEicLwFyVMTdoQKAA=',
                ),

                // Call & Chat Buttons
              ],
            ),
          ),
        ),
      ),
    );
  }
}

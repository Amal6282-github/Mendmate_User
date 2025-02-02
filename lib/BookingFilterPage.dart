import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/filepickerbutton.dart';
import 'package:project_mendmate_user/ratingfiltercard.dart';

class Bookingfilterpage extends StatelessWidget {
  final String catergoryname;
  final SvgPicture serviceimg;

  const Bookingfilterpage(
      {super.key, required this.catergoryname, required this.serviceimg});

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
          style: GoogleFonts.workSans(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          'Filter By',
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                            style: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff6C757D)),
                            'Selected Category  :    '),
                        Text(
                            style: GoogleFonts.workSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            catergoryname),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 15,
                            width: 15,
                            child: serviceimg,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelStyle: GoogleFonts.workSans(),
                      labelText: "Select City", filled: true,
                      fillColor: Colors.grey[200], // Light background color
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 16.0),

                      border: OutlineInputBorder(),
                    ),
                    dropdownColor: Color(0xffF6F7F9),
                    items: [
                      'Thiruvananthapuram',
                      'Kollam',
                      'Pathanamthitta',
                      'Alappuzha',
                      'Kottayam',
                      'Idukki',
                      'Ernakulam',
                      'Thrissur',
                      'Palakkad',
                      'Malappuram',
                      'Kozhikode',
                      'Wayanad',
                      'Kannur',
                      'Kasaragod'
                    ]
                        .map((city) =>
                            DropdownMenuItem(value: city, child: Text(city)))
                        .toList(),
                    onChanged: (value) {
                      print("Selected City: $value");
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [RatingFilterCard()],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelStyle: GoogleFonts.workSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff7D858D)),
                          labelText: '   Contact Number',
                          suffixIcon: SvgPicture.asset(
                              color: Color(0xff7D858D),
                              'assets/phone-call.svg'),
                          suffixIconConstraints: BoxConstraints(maxHeight: 20),
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7D858D)),
                        labelText: '       Enter the Address',
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width - 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Color(0xffF6F7F9)),
                  child: TextField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff7D858D)),
                        labelText: '      Description About the problem ',
                        border: InputBorder.none),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Filepickerbutton(),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10)),
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 35, 40),
                      backgroundColor: Color(0xff3C549C)),
                  onPressed: () {},
                  child: Text(
                    'Apply',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

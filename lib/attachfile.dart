import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Attachfile extends StatelessWidget {
  final String title;
  const Attachfile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        height: 53,
        decoration: BoxDecoration(
            color: Color(0xffF6F7F9),
            borderRadius: BorderRadiusDirectional.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Expanded(
                  child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Text(
                          style: GoogleFonts.workSans(
                              color: Color(0xff9AA0A5),
                              fontWeight: FontWeight.w500),
                          title),
                      SizedBox(
                        width: 30,
                      ),
                      IconButton(
                          onPressed: () async {
                            await FilePicker.platform.pickFiles();
                          },
                          icon:
                              Icon(color: Color(0xff9AA0A5), Icons.attach_file))
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatboxscreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  const Chatboxscreen({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 85,
          leading: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:
                      Icon(color: Colors.white, size: 30, Icons.chevron_left)),
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ],
          ),
          backgroundColor: Color(0xff3D56A2),
          title: Text(
            style: GoogleFonts.workSans(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
            name,
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/chatbox.jpg'))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(8),
                        color: Colors.white,
                        border:
                            Border(top: BorderSide(color: Colors.grey[300]!))),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Write a message...",
                                border: InputBorder.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(5),
                              color: Color(0xff3D56A2),
                            ),
                            height: 40,
                            width: 40,
                            child: IconButton(
                              onPressed: () {},
                              icon: Transform.rotate(
                                angle: 3.14 / .56,
                                child: SvgPicture.asset(
                                    color: Colors.white,
                                    height: 18,
                                    'assets/paper-plane-top.svg'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

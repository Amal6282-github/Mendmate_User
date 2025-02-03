import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/chatboxscreen.dart';
import 'package:project_mendmate_user/chatscreencard.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              style: GoogleFonts.workSans(
                  color: Colors.white, fontWeight: FontWeight.w500),
              'Chats'),
          backgroundColor: Color(0xff3D56A2),
        ),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 55,
                        decoration: (BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 7)
                            ],
                            borderRadius: BorderRadiusDirectional.circular(10),
                            color: Color(0xffF6F7F9))),
                        child: Row(
                          children: [
                            Container(
                                width: 60,
                                child: SvgPicture.asset(
                                    height: 25,
                                    width: 25,
                                    color: Color(0xff6C757D),
                                    'assets/search (1).svg')),
                            Container(
                                height: 30,
                                width: 200,
                                child: TextField(
                                    keyboardType: TextInputType.name,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        floatingLabelBehavior:
                                            FloatingLabelBehavior.never,
                                        labelText: 'Search here',
                                        labelStyle: GoogleFonts.workSans(
                                            color: Color(0xff6C757D)))))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  color: Colors.white,
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chatboxscreen(
                                  imageUrl:
                                      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                                  name: 'Sylvan Strosin',
                                ),
                              ));
                        },
                        child: Chatscreencard(
                          name: 'Sylvan Strosin',
                          message: 'It is a long established fact that...',
                          time: '2:30 PM',
                          unreadCount: 0,
                          imageUrl:
                              'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Chatboxscreen(
                                  imageUrl:
                                      'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                                  name: 'Bella Donnelly',
                                ),
                              ));
                        },
                        child: Chatscreencard(
                          name: 'Bella Donnelly',
                          message: 'It is a long established fact',
                          time: '2:00 PM',
                          unreadCount: 3,
                          imageUrl:
                              'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                        ),
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Bella Donnelly',
                        message: 'It is a long established fact',
                        time: '2:00 PM',
                        unreadCount: 3,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Bella Donnelly',
                        message: 'It is a long established fact',
                        time: '2:00 PM',
                        unreadCount: 3,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Bella Donnelly',
                        message: 'It is a long established fact',
                        time: '2:00 PM',
                        unreadCount: 3,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                      Chatscreencard(
                        name: 'Cooper McCullough',
                        message: 'It is a long established',
                        time: '12:25 PM',
                        unreadCount: 4,
                        imageUrl:
                            'https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

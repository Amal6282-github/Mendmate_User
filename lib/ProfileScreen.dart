import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              style: GoogleFonts.workSans(
                  color: Colors.white, fontWeight: FontWeight.w500),
              'Profile'),
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
                _buildProfileHeader(),
                SizedBox(height: 20),
                _buildSectionTitle("GENERAL"),
                _buildMenuItem(Icons.lock, "Change Password"),
                _buildMenuItem(Icons.favorite_border, "Favourite Service"),
                _buildMenuItem(Icons.star_border, "Rate Us"),
                _buildSectionTitle("ABOUT APP"),
                _buildMenuItem(Icons.privacy_tip_outlined, "Privacy Policy"),
                _buildMenuItem(Icons.article_outlined, "Terms & Conditions"),
                _buildMenuItem(Icons.help_outline, "Help Support"),
              ],
            ),
          ),
        ));
  }

  Widget _buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Stack(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/85.jpg') // Change this to NetworkImage if needed
                    ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff3D56A2),
                    radius: 18,
                    child: Icon(Icons.edit, color: Colors.white, size: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text("Ashutosh Pandey",
              style: GoogleFonts.workSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          SizedBox(
            height: 5,
          ),
          Text(
            "Ashutosh@gmail.com",
            style: GoogleFonts.workSans(
                fontSize: 14,
                color: Color(
                  0xff6C757D,
                ),
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  /// Section Title Widget
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        color: Color(0xffF6F7F9),
        height: 35,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(title,
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3D56A2))),
          ),
        ),
      ),
    );
  }

  /// Menu Item Widget (Each Row Item)
  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Color(0xff6C757D)),
      title: Text(title,
          style: GoogleFonts.workSans(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: () {
        // Handle navigation here
      },
    );
  }

  /// Bottom Navigation Bar
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue[800],
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
      ],
    );
  }
}

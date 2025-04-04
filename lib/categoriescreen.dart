import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mendmate_user/bookingfilterpage.dart';
import 'package:project_mendmate_user/viewallcategorypagecard.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Categoriescreen extends StatefulWidget {
  const Categoriescreen({super.key});

  @override
  State<Categoriescreen> createState() => _CategoriescreenState();
}

class _CategoriescreenState extends State<Categoriescreen> {
  final supabase = Supabase.instance.client;
  List<Map<String, dynamic>> categories = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCategories(); // Fetch categories initially
    // Listen for real-time updates
  }

  Future<void> fetchCategories() async {
    try {
      final response = await supabase.from("service").select();
      if (response.isNotEmpty) {
        setState(() {
          categories = response;
        });
      }
    } catch (error) {
      print("Error fetching categories: $error");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

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
          style: GoogleFonts.poppins(
              fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          'Category',
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator()) // 🔄 Show loading spinner
              : categories.isEmpty
                  ? Center(
                      child: Text("No categories available")) // 🚫 If no data
                  : GridView.builder(
                      padding: EdgeInsets.all(10),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final service = categories[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bookingfilterpage(
                                        catergoryname: service["name"],
                                        serviceimg: SvgPicture.asset(
                                            "assets/house-chimney (1).svg"))));
                          },
                          child: Viewallcategorypagecard(
                              title: service["name"],
                              serviceimg: NetworkImage(service["image_url"])),
                        );
                      },
                    ),
        ),
      ),
    );
  }
}

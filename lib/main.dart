import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Playing.dart';
import 'Categories.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PodHome(),
    ),
  );
}

class PodHome extends StatefulWidget {
  @override
  _PodHomeState createState() => _PodHomeState();
}

class _PodHomeState extends State<PodHome> {
  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        padding: EdgeInsets.only(top: 56, left: 12, right: 12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff7C82D4), Color(0xff3A8AE3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/logo.png",
                  height: 35,
                ),
                SizedBox(width: 30),
                Text("Magic",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)),
                Text("Pod",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 24,
                        color: Color(0xffF8D13F),
                        fontWeight: FontWeight.w900)),
                Spacer(),
                ClipOval(
                    child: Image.asset(
                  "assets/profile.png",
                  height: 40,
                )),
                SizedBox(width: 14)
              ],
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(left: 10),
              width: _w * 0.9,
              height: _h * 0.055,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(30),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search from the Pod List...",
                    border: InputBorder.none,
                    hintStyle: GoogleFonts.sourceSansPro(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  textAlignVertical: TextAlignVertical.center,
                  maxLines: 1,
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                height: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: SizedBox(
                          width: _w * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discover the trend",
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Lets hit the trend to more trendy!",
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 16,
                                  color: Colors.white.withOpacity(0.8),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Categories("Covid-19", "For You", "assets/cat1.png",
                                Color(0xFFFE5E5D), Color(0xFFF5ADC1), true),
                            Categories(
                                "Mediation",
                                "Weekly Best",
                                "assets/cat2.png",
                                Color(0xFF3D725B),
                                Color(0xFF8FDBB9),
                                false),
                            Categories("Around Us", "New", "assets/cat3.png",
                                Color(0xFF084858), Color(0xFF0096AF), false),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: _w * 0.9,
                        child: Text(
                          "You were listening...",
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),


                      Playing(
                          "The Mediation Podcast",
                          "E-3 S-1: Deep Breathing...",
                          "assets/pod5.png",
                          "Meditation",
                          Color(0xFF3BA237),
                          Color(0xFF9D9FF9),
                          0,
                          7,
                          26,
                          0.4),

                      Playing(
                          "The Verge Cast",
                          "IPhone 12 worth it?...",
                          "assets/pod1.png",
                          "Technology",
                          Color(0xFFF54848),
                          Color(0xFFDD98CE),
                          0,
                          0,
                          37,
                          0.97),
                      Playing(
                          "The Bill Simmons Podcast",
                          "HBO Sports Pod : Epi. 27",
                          "assets/pod3.png",
                          "Sports",
                          Color(0xFF43C0B8),
                          Color(0xFF43C0B8),
                          0,
                          2,
                          27,
                          0.8)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




























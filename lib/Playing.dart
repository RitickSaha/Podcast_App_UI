import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Playing extends StatefulWidget {
  String pod, info, album, cat;
  Color color, catColor;
  int hrs, min, sec;
  double progress;

  Playing(this.pod, this.info, this.album, this.cat, this.catColor, this.color,
      this.hrs, this.min, this.sec, this.progress);

  @override
  _PlayingState createState() => _PlayingState();
}

class _PlayingState extends State<Playing> {
  bool heart = false;

  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(4),
      child: Stack(
        children: [
          Container(
            height: _h * 0.165,
            width: _w * 0.9,
            padding:
                EdgeInsets.only(left: 8, top: _h * 0.12, right: 8, bottom: 8),
            decoration: BoxDecoration(
              color: widget.catColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.play_circle_fill_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                ShaderMask(
                  child: Image.asset(
                  "assets/play2.png",
                  width: _w * 0.6,
                ),
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                        colors: [Colors.white, Colors.white24],
                        stops: [0.2,0.2],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight
                      ).createShader(bounds);
                  },
                ),

                GestureDetector(
                    child: Image.asset(
                      heart ? "assets/heart.png" : "assets/empty_heart.png",
                      height: 22,
                      width: 22,
                    ),
                    onTap: () {
                      setState(() {
                        heart = !heart;
                      });
                    }),
              ],
            ),
          ),
          Container(
            height: _h * 0.11,
            width: _w * 0.9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 8,
                    offset: Offset(0, 8))
              ],
              gradient: LinearGradient(
                  colors: [Colors.white, widget.color],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row  (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      widget.album,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: _h * 0.12,
                    width: _w * 0.6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.pod,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.info,
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 3, horizontal: 12),
                              decoration: BoxDecoration(
                                color: widget.catColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Text(
                                widget.cat,
                                style: GoogleFonts.sourceSansPro(
                                  fontSize: 14,
                                  color: Colors.white.withOpacity(0.9),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                            Text(
                              "${widget.hrs}:${widget.min}:${widget.sec} Left",
                              style: GoogleFonts.sourceSansPro(
                                fontSize: 14,
                                color: Colors.black.withOpacity(0.4),
                                fontWeight: FontWeight.w900,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

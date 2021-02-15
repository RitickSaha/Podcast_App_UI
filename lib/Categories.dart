import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  String lable, subLable, path;
  Color color,colorbg;
  bool isSelected;

  Categories(this.lable, this.subLable, this.path, this.color,this.colorbg, this.isSelected);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    double _h = MediaQuery.of(context).size.height;
    double _w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        height: _h * 0.2,
        width: _w * 0.28,
        decoration: BoxDecoration(
            color: widget.isSelected ? Colors.white : Colors.white38,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                widget.path,
                height: _h * 0.13,
              ),

              Text(
                widget.lable,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 16,
                  color:
                  widget.isSelected ? Colors.grey.shade800 : Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),

             Container(
                width: _w * 0.9,
                height: _h * 0.028,
                decoration: BoxDecoration(
                  color: widget.colorbg,
                  borderRadius: BorderRadius.all(Radius.circular(_h * 0.025)),
                ),
                child: Center(
                  child: Text(
                    widget.subLable,
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 12,
                      color: widget.color,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
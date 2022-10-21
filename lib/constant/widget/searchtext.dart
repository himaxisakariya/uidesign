import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';

class SearchTextField extends StatelessWidget {
  String? hintText;
  String? icon;
  double? fontSize;

  SearchTextField({super.key, this.hintText, this.icon, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 220,
      alignment: Alignment.center,
      child: TextField(
        style: const TextStyle(color: Fixcolors.black),
        cursorColor: Colors.white,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(bottom: 5, left: 10),
            filled: true,
            prefixIcon: Container(
                height: 5,
                width: 5,
                alignment: Alignment.center,
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Image.asset(
                    LookPriorImage.searchimage,
                    fit: BoxFit.contain,
                  ),
                )),
            fillColor: const Color(0xff19C060),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w400,
                    color: Fixcolors.white)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Fixcolors.greenacccet)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Fixcolors.greenacccet)),
            border: OutlineInputBorder(
                borderSide: const BorderSide(),
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}

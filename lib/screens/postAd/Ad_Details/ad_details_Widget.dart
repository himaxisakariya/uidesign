import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/textfield.dart';

Widget title() {
  return TextFields(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter title';
      }
      return null;
    },
    readonly:  false,
    hintText: Stringtext.title,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        )), filed: false,
  );
}

Widget amount() {
  return TextFields(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter amount';
      }
      return null;
    },
    readonly: false,
    hintText: Stringtext.amount,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        )),filed: false,
  );
}
Widget description() {
  return TextFields(
    hintText: Stringtext.description,
    maxline: 7,
    readonly: false,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        )),filed: false,
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/textfield.dart';

Widget urlusale() {
  return TextFields(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter url';
      }
      return null;
    },
    readonly:  false,
    hintText: Stringtext.usale4,
    textInputType: TextInputType.url,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
        )),filed: false,
  );
}

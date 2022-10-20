import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';

class Applebutton extends StatelessWidget {
  FontWeight? fontWeight;
  Function()? onTap;
  Color? buttonColor;
  String? text;
  String? buttonIcon;

  Applebutton(
      {super.key,
      this.text,
      this.onTap,
      this.buttonColor,
      this.buttonIcon,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 7, 30, 7),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(7)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                      height: 18,
                      width: 20,
                      margin: const EdgeInsets.only(right: 13.52),
                      child: Image.asset(
                        buttonIcon!,
                        fit: BoxFit.fill,
                      )),
              Text(
                text!,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Fixcolors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class facebookButton extends StatelessWidget {
  FontWeight? fontWeight;
  Function()? onTap;
  Color? buttonColor;
  String? text;
  String? buttonIcon;

  facebookButton(
      {super.key,
      this.text,
      this.onTap,
      this.buttonColor,
      this.buttonIcon,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 7, 30, 7),
        child: Container(
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: buttonColor, borderRadius: BorderRadius.circular(7)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                      height: 19,
                      width: 10,
                      margin: const EdgeInsets.only(right: 13.52),
                      child: Image.asset(
                        buttonIcon!,
                        fit: BoxFit.fill,
                      )),
              Text(
                text!,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Fixcolors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

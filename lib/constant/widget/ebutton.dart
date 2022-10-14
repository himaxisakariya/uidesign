import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';

class ElevateButton extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? buttonColor;
  final VoidCallback? onPressed;
  final double? width;
  final double? margin;
  final double? textSize;
  final double? borderRadius;
  final ButtonStyle? style;

  const ElevateButton({super.key,
    this.text,
    this.textColor,
    this.buttonColor,
    this.onPressed,
    this.width,
    this.margin,
    this.borderRadius = 7,
    this.textSize = 20,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
            ),
          ),
        ),
        child: Text(
          text!,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Fixcolors.white)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFields extends StatelessWidget {

  final String? lable;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final String? hintText;
  final Border? border;
  final String? Function(String?)? validator;
  ValueChanged<String>? onFieldSubmitted;
  final TextStyle? hintstyle;
  final int? maxline;
bool readonly = false;
bool filed  = false;
final Color? fillcolor;

  TextFields(
      {super.key,
        this.lable,
        this.textInputType,
        this.prefixIcon,
        this.textEditingController,
        this.hintText,
        this.border,
        int? width,
        this.validator,
        this.onFieldSubmitted, this.hintstyle,this.maxline,this.suffixIcon,required this.readonly, required this.filed,this.fillcolor
      });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(onFieldSubmitted: onFieldSubmitted,
          keyboardType: textInputType,
          controller: textEditingController,
          validator: validator,
          maxLines: maxline,
          readOnly:  readonly,
          decoration: InputDecoration(
            filled: filed,
            fillColor: fillcolor,
            contentPadding: const EdgeInsets.only(top: 5,left: 10),
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                )),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}



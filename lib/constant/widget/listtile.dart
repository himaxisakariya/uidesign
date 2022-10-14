import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listtilee extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;

  final Color? color;
  final VoidCallback? onTap;
  final String? text;
  final String? titletext;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? imgtext;

  const Listtilee({
    Key? key,
    this.title,
    this.subtitle,
    this.onTap,
    this.text,
    this.titletext,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.imgtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        margin: const EdgeInsets.only(top: 7, left: 0, bottom: 8, right: 12),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff2ECC71).withOpacity(0.1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: (text == null)
                ? const SizedBox()
                : Image.asset(
                    text!,
                  )),
      ),
      title: Text(
        titletext!,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
          fontSize: fontSize!,
          fontWeight: FontWeight.w400,
        )),
      ),
      subtitle: subtitle,
      trailing: Container(
          margin: const EdgeInsets.only(left: 0,top: 5,bottom: 5,right: 0),
          height: 15, width: 15, child: Image.asset(imgtext!)),
      textColor: color,
      onTap: onTap,
      iconColor: color,
    );
  }
}

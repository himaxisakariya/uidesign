import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';

Future<void> welcomePopup(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        icon: Image.asset(Images.welcome),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Center(
                child: Text(
                  Stringvalue.welcome,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Stringvalue.welcomedocument,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Fixcolors.green)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const Post_ads();
                    },));
                  },
                  child: Text("Post my first ad now",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)))),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Fixcolors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Remove",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)))),
            ],
          ),
        ),
      );
    },
  );
}

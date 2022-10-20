import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

import '../../constant/widget/ebutton.dart';

class feedback extends StatefulWidget {
  const feedback({Key? key}) : super(key: key);

  @override
  State<feedback> createState() => _feedbackState();
}

class _feedbackState extends State<feedback> {
  final _form = GlobalKey<FormState>();
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
              height: 40,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Fixcolors.white,
                      )),
                  const SizedBox(
                    width: 90,
                  ),
                  const textlist(
                    text: Stringtext.feedback,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ],
              )),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Fixcolors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Form(
              key: _form,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: textlist(
                      text: Stringtext.fd1,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.green,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: textlist(
                      text: Stringtext.fd2,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringtext.fd3,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  feedbacks(),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 35,
                    alignment: Alignment.centerRight,
                    child: const ElevateButton(
                      buttonColor: Fixcolors.green,
                      text: Stringtext.fd5,
                      textColor: Fixcolors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

Widget feedbacks() {
  return TextFields(
    hintText: Stringtext.fd4,
    maxline: 5,
    readonly: false,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 13, color: Fixcolors.black)),
    filed: false,
  );
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    screen();
  }

  Future screen() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return const HomePage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Fixcolors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 220),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                LookPriorImage.splashscreen,
                width: 90,
                height: 80,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                Stringtext.splashTitle,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

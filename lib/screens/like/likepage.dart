import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/floatingactionbutton.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';

class Likepage extends StatefulWidget {
  const Likepage({Key? key}) : super(key: key);

  @override
  State<Likepage> createState() => _LikepageState();
}

class _LikepageState extends State<Likepage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: AppBar(title: const Text("Likepage"),backgroundColor: Fixcolors.green,),
      body:  Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(top: 100),
              child: Image.asset(Images.empty),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const textlist(
                text: Stringtext.emptytext1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Post_ads();
              },
            ));
          },
          backgroundColor: Fixcolors.green,
          child: const Icon(
            size: 40,
            Icons.add,
            color: Fixcolors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const navigationbars()
    );
  }
}

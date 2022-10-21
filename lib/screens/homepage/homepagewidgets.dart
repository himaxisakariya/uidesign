import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/listtile.dart';
import 'package:uidesign/screens/Feedback/feedback.dart';
import 'package:uidesign/screens/Help/Help_page.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/loction/category_page/category_page.dart';
import 'package:uidesign/screens/login/loginpage.dart';
import 'package:uidesign/screens/peopleneed/People_Need.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';
import 'package:uidesign/screens/profile/ads/ads.dart';
import 'package:uidesign/screens/wallet/wallet.dart';



class textlist extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? titletext;
  final String? imgtext;

  const textlist(
      {Key? key, this.text, this.fontSize, this.fontWeight, this.color, this.titletext, this.imgtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: GoogleFonts.poppins(
          textStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
              overflow: TextOverflow.ellipsis)),
    );
  }
}

draweropen(BuildContext context) {
  return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: ListView(children: [
        Container(
            height: 125,
            color: Fixcolors.green,
            child: Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(top: 25, right: 10, left: 15, bottom: 10),
                  height: 70,
                  width: 80,
                  child: Image.asset(
                    LookPriorImage.loginperson,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ));
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const textlist(
                              text: Stringtext.drawername,
                              fontSize: 15,
                              color: Fixcolors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 52, left: 7),
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(
                              LookPriorImage.loginarrow,
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            )),
        const SizedBox(
          height: 15,
        ),
         Listtilee(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return const Post_ads();
             },));
           },
          text: LookPriorImage.drawer1,
          titletext: Stringtext.drawer1,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Category_Page();
            },));
          },
          text: LookPriorImage.fourimage,
          titletext: Stringtext.drawer2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ads_page();
            },));
          },
          text: LookPriorImage.drawer2,
          titletext: Stringtext.drawer3,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
        Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Wallet();
            },));
          },
          text: LookPriorImage.wallet,color: Fixcolors.green,
          titletext: Stringtext.wallet,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DISK_SPACE();
            },));
          },
          text: LookPriorImage.drawer3,
          titletext: Stringtext.drawer4,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
        Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return people_Need();
            },));
          },
          text: LookPriorImage.drawer4,
          titletext: Stringtext.drawer5,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Help_Page();
            },));
          },
          text: LookPriorImage.drawer5,
          titletext: Stringtext.drawer6,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
        Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const feedback();
            },));
            },
          text: LookPriorImage.sellfaster,
          titletext: Stringtext.feedback,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: LookPriorImage.barrow,
        ),
        Container(
          height: 50,
          width: 50,
         margin: const EdgeInsets.only(left: 20,top: 80),
         alignment: Alignment.bottomLeft,
         child: Image.asset(LookPriorImage.splashscreen),
        )

      ]));
}
List bottomimage = [(LookPriorImage.home),(LookPriorImage.heart),(LookPriorImage.email2),(LookPriorImage.person2)];

List productimage = [(LookPriorImage.thirdimage), (LookPriorImage.fourimages), (LookPriorImage.fiveimage), (LookPriorImage.fiveimages), (LookPriorImage.watch), (LookPriorImage.iphoneimage)];

List icon = [(Stringtext.hotel), (Stringtext.car), (Stringtext.phone), (Stringtext.more)];

List iconname = [(LookPriorImage.realstate), (LookPriorImage.carimage), (LookPriorImage.phoneimage), (LookPriorImage.fourimage)];

List image = [(LookPriorImage.firstimage), (LookPriorImage.secondimage), (LookPriorImage.iphoneimage), (LookPriorImage.secondimage)];

List price = [(Stringtext.prize), (Stringtext.prize2), (Stringtext.prize), (Stringtext.prize2), (Stringtext.watchprice), (Stringtext.iphoneprice)
];

List productname = [(Stringtext.bmw2021), (Stringtext.imaccomputer), (Stringtext.iphone), (Stringtext.imaccomputer)
];
List product2name = [(Stringtext.canonlens), (Stringtext.microwave), (Stringtext.wallet), (Stringtext.ring), (Stringtext.watch), (Stringtext.iphone)];



import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/listtile.dart';
import 'package:uidesign/screens/Help/Help_page.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/homepage/home_page.dart';
import 'package:uidesign/screens/like/likepage.dart';
import 'package:uidesign/screens/loction/category_page/category_page.dart';
import 'package:uidesign/screens/login/loginpage.dart';
import 'package:uidesign/screens/message/message_page.dart';
import 'package:uidesign/screens/poplenedd/People_Need.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';
import 'package:uidesign/screens/profile/profile_page.dart';



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
                    Images.loginperson,
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const loginpage();
                        },
                      ));
                    },
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const textlist(
                              text: Stringvalue.drawername,
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
                              Images.loginarrow,
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
          text: Images.drawer1,
          titletext: Stringvalue.drawer1,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Category_Page();
            },));
          },
          text: Images.fourimage,
          titletext: Stringvalue.drawer2,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
        const Listtilee(
          text: Images.drawer2,
          titletext: Stringvalue.drawer3,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const DISK_SPACE();
            },));
          },
          text: Images.drawer3,
          titletext: Stringvalue.drawer4,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
        Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return people_Need();
            },));
          },
          text: Images.drawer4,
          titletext: Stringvalue.drawer5,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
         Listtilee(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Help_Page();
            },));
          },
          text: Images.drawer5,
          titletext: Stringvalue.drawer6,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          imgtext: Images.barrow,
        ),
        Container(
          height: 50,
          width: 50,
         margin: const EdgeInsets.only(left: 20,top: 80),
         alignment: Alignment.bottomLeft,
         child: Image.asset(Images.splashscreen),
        )

      ]));
}
List bottomimage = [(Images.home),(Images.heart),(Images.email2),(Images.person2)];

List productimage = [
  (Images.thirdimage),
  (Images.fourimages),
  (Images.fiveimage),
  (Images.fiveimages),
  (Images.watch),
  (Images.iphoneimage)
];
List<Widget> pages = [
  const HomePage(),
  const Likepage(),
  const Messagepage(),
  const Profilepage(),
];
List icon = [
  (Stringvalue.hotel),
  (Stringvalue.car),
  (Stringvalue.phone),
  (Stringvalue.more)
];

List iconname = [
  (Images.realstate),
  (Images.carimage),
  (Images.phoneimage),
  (Images.fourimage)
];

List image = [
  (Images.firstimage),
  (Images.secondimage),
  (Images.iphoneimage),
  (Images.secondimage)
];

List prizename = [
  (Stringvalue.prize),
  (Stringvalue.prize2),
  (Stringvalue.prize),
  (Stringvalue.prize2),
  (Stringvalue.watchprice),
  (Stringvalue.iphoneprice)
];

List productname = [
  (Stringvalue.bmw2021),
  (Stringvalue.imaccomputer),
  (Stringvalue.iphone),
  (Stringvalue.imaccomputer)
];
List product2name = [
  (Stringvalue.canonlens),
  (Stringvalue.microwave),
  (Stringvalue.wallet),
  (Stringvalue.ring),
  (Stringvalue.watch),
  (Stringvalue.iphone)
];

class navigationbars extends StatefulWidget {
  const navigationbars({Key? key}) : super(key: key);

  @override
  State<navigationbars> createState() => navigationbarsState();
}

class navigationbarsState extends State<navigationbars> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavIndex = 0;
    bool select = true;
    return  AnimatedBottomNavigationBar.builder(
      //notchSmoothness: NotchSmoothness.verySmoothEdge,
      activeIndex: _bottomNavIndex,
      gapLocation: GapLocation.center,
      itemCount: 4,
      tabBuilder: (index, isActive) {
        return Container(
          height: 27,
          width: 27,
          margin:
          const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
          alignment: Alignment.center,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: select == false
                  ? Image.asset(
                bottomimage[index],color: Colors.grey,
              )
                  : Image.asset(
                bottomimage[index],
                color: Fixcolors.green,
              )),
        );
      },
      onTap: (index) {
        setState(() {
          select = !select;
          _bottomNavIndex = index;
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return pages[index];
            },
          ));
        });
      },
    );
  }
}

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/screens/homepage/home_page.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/like/likepage.dart';
import 'package:uidesign/screens/message/message_page.dart';
import 'package:uidesign/screens/profile/profile_page.dart';

class navigationbars extends StatefulWidget {
  const navigationbars({Key? key}) : super(key: key);

  @override
  State<navigationbars> createState() => navigationbarsState();
}

class navigationbarsState extends State<navigationbars> {
  @override
  Widget build(BuildContext context) {
    var bottomNavIndex = 0;
    bool select = true;
    return  AnimatedBottomNavigationBar.builder(
      //notchSmoothness: NotchSmoothness.verySmoothEdge,
      itemCount: 4,
      activeIndex: bottomNavIndex,
      gapLocation: GapLocation.center,
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
          bottomNavIndex = index;
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
List pages = const[HomePage(), Likepage(), Messagepage(), Profile_Page(),
];
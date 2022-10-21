import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/searchtext.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/loction/loction_page.dart';
import 'package:uidesign/screens/notification/notification_page.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';
import '../../constant/widget/floatingactionbutton.dart';
import '../welcompopup/welcome_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = true;
  bool select = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      welcomePopup(context);
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Fixcolors.green,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
        key: scaffoldKey,
        drawerEnableOpenDragGesture: true,
        drawer: draweropen(context),
        backgroundColor: Fixcolors.green,
        body: Column(children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                      setState(() {});
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 20,
                        child: Image.asset(
                          LookPriorImage.addimage,
                        )),
                  ),
                  SizedBox(
                      height: 47,
                      child: Image.asset(
                        LookPriorImage.registerlogo,
                      )),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Fixcolors.greenacccet,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(7),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          LookPriorImage.bellimage,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Notificationpage();
                        },
                      ));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 6),
                    child: SearchTextField(
                      icon: LookPriorImage.searchimage,
                      hintText: Stringtext.serach,
                      fontSize: 14,
                    ),
                  ),
                  PopupMenuButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    position: PopupMenuPosition.under,
                    offset: const Offset(-3, 8),
                    child: Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Fixcolors.greenacccet,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(left: 0),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          LookPriorImage.squarimage,
                        ),
                      ),
                    ),
                    onSelected: (value) {},
                    itemBuilder: (BuildContext bc) {
                      return const [
                        PopupMenuItem(
                          value: 1,
                          child: SizedBox(height: 20, child: Text("All")),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: SizedBox(height: 20, child: Text('Settings')),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: SizedBox(height: 20, child: Text("Regular")),
                        )
                      ];
                    },
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Fixcolors.greenacccet,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.all(7),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          LookPriorImage.loctionimage,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const loction_page();
                        },
                      ));
                    },
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
                decoration: const BoxDecoration(
                    color: Fixcolors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: textlist(
                          text: Stringtext.category,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        )),
                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        itemCount: icon.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 67,
                                width: 67,
                                margin: const EdgeInsets.only(
                                    top: 7, left: 9, bottom: 8, right: 12),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Fixcolors.greenacccet
                                          .withOpacity(0.2)),
                                  color: const Color(0xffE4FFEF),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset(
                                    iconname[index],
                                  ),
                                ),
                              ),
                              textlist(
                                text: icon[index],
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: textlist(
                              text: Stringtext.topads,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            )),
                        const Padding(
                            padding: EdgeInsets.only(left: 190),
                            child: textlist(
                              text: Stringtext.seeall,
                              fontSize: 14,
                              color: Fixcolors.green,
                              fontWeight: FontWeight.w500,
                            )),
                        Container(
                          height: 15,
                          width: 15,
                          margin: const EdgeInsets.all(7),
                          child: Image.asset(
                            LookPriorImage.arrowimage,
                            color: Fixcolors.green,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 190,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topRight,
                                    height: 90,
                                    width: 140,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                            image: AssetImage(image[index]),
                                            fit: BoxFit.fill),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Stack(
                                      children: [
                                        InkWell(
                                          child: Container(
                                            height: 20,
                                            width: 20,
                                            padding: const EdgeInsets.all(3),
                                            child: like == false
                                                ? Image.asset(
                                              LookPriorImage.likeimage,
                                                    color: Colors.red,
                                                  )
                                                : Image.asset(
                                              LookPriorImage.likeimage,
                                                    color: Colors.grey,
                                                  ),
                                          ),
                                          onTap: () {
                                            setState(() {
                                              like = !like;
                                            });
                                          },
                                        )
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textlist(
                                        text: productname[index],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    textlist(
                                        text: price[index],
                                        fontWeight: FontWeight.w500,
                                        color: Fixcolors.green,
                                        fontSize: 10),
                                  ],
                                ),
                                // Row(
                                //   mainAxisAlignment:
                                //       MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Image.asset(
                                //       Images.loctionimage,
                                //       height: 11,
                                //     )
                                //   ],
                                // ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 35,
                                      margin: const EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                          color: Fixcolors.green,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0, bottom: 9, top: 9),
                                              child: Image.asset(
                                                LookPriorImage.shareimage,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 13),
                                            child: const Text(
                                              "Share",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 27,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Colors.grey.withOpacity(0.1)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      margin: const EdgeInsets.only(left: 0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6),
                                        child: Image.asset(
                                          LookPriorImage.modelimage,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: textlist(
                          text: Stringtext.nearyou,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      child: GridView.builder(
                        itemCount: productimage.length,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Card(
                            child: Column(
                              children: [
                                Container(
                                    alignment: Alignment.topRight,
                                    height: 90,
                                    width: 140,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                            image:
                                                AssetImage(productimage[index]),
                                            fit: BoxFit.fill),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 20,
                                          padding: const EdgeInsets.all(3),
                                          child: Image.asset(LookPriorImage.likeimage),
                                        )
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    textlist(
                                        text: product2name[index],
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    textlist(
                                        text: price[index],
                                        fontWeight: FontWeight.w500,
                                        color: Fixcolors.green,
                                        fontSize: 10),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 35,
                                      margin: const EdgeInsets.only(
                                          left: 2, right: 45),
                                      decoration: BoxDecoration(
                                          color: Fixcolors.green,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 50,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 0, bottom: 9, top: 9),
                                              child: Image.asset(
                                                LookPriorImage.shareimage,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.only(
                                                right: 13),
                                            child: const Text(
                                              "Share",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                )),
          ),
        ]),
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
        bottomNavigationBar: const navigationbars());
  }
}

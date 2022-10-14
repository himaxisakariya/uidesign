import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
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
                          Images.addimage,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: const textlist(
                      text: Stringvalue.profile,
                      color: Fixcolors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 80),
                      height: 20,
                      child: Image.asset(
                        Images.profileedit,
                      )),
                  Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 20,
                      child: Image.asset(
                        Images.menu,
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Align(
              alignment:  const Alignment(-1.4,4.0),
              child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(Images.loginperson)),
                      color: Fixcolors.white,
                      //borderRadius: BorderRadius.only(
                        //topLeft: Radius.circular(30),
                       // topRight: Radius.circular(30),
                     // )
                  ),



                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: textlist(
                            text: Stringvalue.category,
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
                                text: Stringvalue.topads,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              )),
                          const Padding(
                              padding: EdgeInsets.only(left: 190),
                              child: textlist(
                                text: Stringvalue.seeall,
                                fontSize: 14,
                                color: Fixcolors.green,
                                fontWeight: FontWeight.w500,
                              )),
                          Container(
                            height: 15,
                            width: 15,
                            margin: const EdgeInsets.all(7),
                            child: Image.asset(
                              Images.arrowimage,
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
                                          text: prizename[index],
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
                                                  Images.shareimage,
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
                                            Images.modelimage,
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
                            text: Stringvalue.nearyou,
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
                                            child: Image.asset(Images.likeimage),
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
                                          text: prizename[index],
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
                                                  Images.shareimage,
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

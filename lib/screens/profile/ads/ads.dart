import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/sellfaster/sell_faster.dart';

class ads_page extends StatefulWidget {
  @override
  State<ads_page> createState() => _ads_pageState();
}

class _ads_pageState extends State<ads_page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: true,
      drawer: draweropen(context),
      backgroundColor: Fixcolors.green,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
              height: 40,
              child: Row(
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
                  const SizedBox(
                    width: 100,
                  ),
                  const textlist(
                    text: Stringtext.myads,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ],
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              color: Fixcolors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )),
          child: Flex(
            direction: Axis.vertical,
            children: [
              _tabSection(context),
            ],
          ),
        ),
      ]),
    );
  }
}

Widget _tabSection(BuildContext context) {
  String a = 'alls';
  return DefaultTabController(
    length: 4,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
         const TabBar(
            labelColor: Fixcolors.greenacccet,
            unselectedLabelColor: Colors.black,
            indicatorColor: Fixcolors.greenacccet,
            indicatorWeight: 3.5,
            tabs: [
              Tab(
                text: "Regular",
              ),
              Tab(text: "Featured"),
              Tab(text: "Favourites"),
              Tab(
                text: "Pending",
              )
            ]),
        const SizedBox(
          height: 5,
        ),
        InkWell(
          child: Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Fixcolors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(4),
                ),
                margin: const EdgeInsets.all(7),
                child: Padding(
                  padding: const EdgeInsets.all(17),
                  child: Image.asset(
                    Images.sellfaster,
                  ),
                ),
              ),
              const textlist(
                text: Stringtext.sf,
                color: Fixcolors.green,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const Sell_faster();
              },
            ));
          },
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Radio(
              value: "All",
              groupValue: a,
              onChanged: (value) {
                a = value.toString();
              },
            ),
            Text(
              "All",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.green)),
            ),
          ],
        ),
        SizedBox(
          //Add this to give height
          height: MediaQuery.of(context).size.height * 0.57,
          child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                SizedBox(
                  child: ListView.builder(
                    itemCount: productimage.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10, bottom: 10),
                          child: ListTile(
                            leading: SizedBox(
                              width: 120,
                              child: Row(
                                children: [
                                  Radio(
                                    value: 'product',
                                    groupValue: a,
                                    onChanged: (value) {
                                      a = value.toString();
                                    },
                                  ),
                                  Container(
                                    //alignment: Alignment.topRight,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        image: DecorationImage(
                                            image:
                                                AssetImage(productimage[index]),
                                            fit: BoxFit.fill),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                  ),
                                ],
                              ),
                            ),
                            title: Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: textlist(
                                text: sellproduct[index],
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.location_on_sharp),
                                    textlist(
                                      text: Stringtext.rlocation,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Fixcolors.grey,
                                    )
                                  ],
                                ),
                                Container(
                                    margin: const EdgeInsets.only(right: 110),
                                    child: textlist(
                                      text: productprice[index],
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.black,
                                    )),
                                Row(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Fixcolors.green,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 7,
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    right: 7),
                                                child: const textlist(
                                                  text: Stringtext.approved,
                                                  fontSize: 6,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Fixcolors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 0,
                                                          bottom: 5,
                                                          top: 5),
                                                  child: Image.asset(
                                                    Images.shareimage,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                padding: const EdgeInsets.only(
                                                    right: 7),
                                                child: const Text(
                                                  "Share",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 6,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Column(
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
                        text: Stringtext.emptytext,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Column(
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
                        text: Stringtext.emptytext,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Column(
                  children: const [
                    Center(
                      child: Text("Pending"),
                    )
                  ],
                )
              ]),
        ),
      ],
    ),
  );
}

List<String> sellproduct = [
  (Stringtext.rads1),
  (Stringtext.rads2),
  (Stringtext.rads3),
  (Stringtext.rads4),
  (Stringtext.rads5),
  (Stringtext.rads6)
];

List<String> productprice = [
  (Stringtext.rprice),
  (Stringtext.rprice1),
  (Stringtext.rprice2),
  (Stringtext.rprice),
  (Stringtext.rprice1),
  (Stringtext.rprice2)
];

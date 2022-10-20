import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/urgentsale/urgent_sale.dart';

class Sell_faster extends StatefulWidget {
  const Sell_faster({Key? key}) : super(key: key);

  @override
  State<Sell_faster> createState() => _Sell_fasterState();
}

class _Sell_fasterState extends State<Sell_faster> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.170240, 72.831062),
    zoom: 14.4746,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
              height: 30,
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
                    width: 50,
                  ),
                  const textlist(
                    text: Stringtext.postad,
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
            child: ListView(children: [
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                elevation: 3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Card(
                        child: ListTile(
                          leading: textlist(
                            text: Stringtext.sellfaster,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringtext.sell1,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.green,
                        ),
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 40, top: 10, bottom: 10),
                              height: 75,
                              width: 130,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff50A0FD),
                                      Colors.lightBlueAccent,
                                      Color(0xff50A0FD)
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                borderRadius: BorderRadius.circular(13),
                                color: const Color(0xff50A0FD),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      "\$ 3 ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 2),
                                    child: Text(
                                      "1 GB Storage Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              customDialogBox(context);
                            },
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 20),
                              height: 75,
                              width: 130,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xff9351FF),
                                      Colors.deepPurple,
                                      Color(0xff9351FF)
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      "\$ 2 ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 2),
                                    child: Text(
                                      "2 GB Storage Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              customDialogBox(context);
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 40, top: 10, bottom: 10),
                              height: 75,
                              width: 130,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFF7A89),
                                      Colors.pinkAccent,
                                      Color(0xffFF7A89)
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      "\$ 8 ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 2),
                                    child: Text(
                                      "3 GB Storage Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              customDialogBox(context);
                            },
                          ),
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10, top: 10, bottom: 10, right: 20),
                              height: 75,
                              width: 130,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xff2CDD68),
                                        Colors.green,
                                        Color(0xff2CDD68)
                                      ],
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft)),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      "\$ 12 ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 2),
                                    child: Text(
                                      "4 GB Storage Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              customDialogBox(context);
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 40, top: 10, bottom: 10),
                              height: 75,
                              width: 130,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFFAA6C),
                                      Colors.deepOrangeAccent,
                                      Color(0xffFFAA6C)
                                    ],
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 4),
                                    child: Text(
                                      "\$ 15 ",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white)),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 15, bottom: 2),
                                    child: Text(
                                      "5 GB Storage Plan",
                                      style: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              customDialogBox(context);
                            },
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringtext.sell2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: Container(
                            height: 250,
                            width: double.infinity,
                            margin: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8))),
                            child: GoogleMap(
                              compassEnabled: true,
                              myLocationEnabled: true,
                              zoomGesturesEnabled: true,
                              scrollGesturesEnabled: true,
                              myLocationButtonEnabled: true,
                              rotateGesturesEnabled: true,
                              mapType: MapType.normal,
                              initialCameraPosition: _kGooglePlex,
                              onMapCreated: (GoogleMapController controller) {
                                _controller.complete(controller);
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const textlist(
                  text: Stringtext.sell3,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ElevateButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const Urgent_sale();
                    },
                  ));
                },
                buttonColor: Fixcolors.green,
                textSize: 16,
                text: Stringtext.next,
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/listtile.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/loction/category_page/category_page.dart';

class loction_page extends StatefulWidget {
  const loction_page({Key? key}) : super(key: key);

  @override
  State<loction_page> createState() => _loction_pageState();
}

class _loction_pageState extends State<loction_page> {
  double _currentSliderValue = 0;
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.170240, 72.831062),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(10.850516,  76.271080),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Fixcolors.green,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    Future<Uint8List> getBytesFromCanvas(int width, int height) async {
      final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
      final Canvas canvas = Canvas(pictureRecorder);
      final Paint paint = Paint()..color = Colors.blue;
      const Radius radius = Radius.circular(20.0);
      canvas.drawRRect(
          RRect.fromRectAndCorners(
            Rect.fromLTWH(0.0, 0.0, width.toDouble(), height.toDouble()),
            topLeft: radius,
            topRight: radius,
            bottomLeft: radius,
            bottomRight: radius,
          ),
          paint);
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = const TextSpan(
        text: 'Hello world',
        style: TextStyle(fontSize: 25.0, color: Colors.white),
      );
      painter.layout();
      painter.paint(canvas, Offset((width * 0.5) - painter.width * 0.5, (height * 0.5) - painter.height * 0.5));
      final img = await pictureRecorder.endRecording().toImage(width, height);
      final data = await img.toByteData(format: ui.ImageByteFormat.png);
      return data!.buffer.asUint8List();
    }
    return Scaffold(
        backgroundColor: Fixcolors.green,
        body: Column(
          children: [
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
                        width: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: const textlist(
                          text: Stringvalue.selectcate,
                          color: Fixcolors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: textlist(
                        text: Stringvalue.cate,
                        color: Fixcolors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.grey, width: 0.4)),
                        child: const Listtilee(
                          text: Images.fourimage,
                          titletext: Stringvalue.selectcate,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          imgtext: Images.barrow,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const Category_Page();
                          },
                        ));
                      },
                    ),
                    sizebox(),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: textlist(
                        text: Stringvalue.loction,
                        color: Fixcolors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          border: Border.all(color: Colors.grey, width: 0.4)),
                      child: const Listtilee(
                        text: Images.loction2,
                        titletext: Stringvalue.place,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        imgtext: Images.loctionedit,
                      ),
                    ),
                    sizebox(),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: textlist(
                        text: Stringvalue.distance,
                        color: Fixcolors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "50m",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 13),
                                  fontWeight: FontWeight.w400,
                                  color: Fixcolors.grey),
                            ),
                            const Text(
                              "|",
                              style: TextStyle(color: Fixcolors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "100m",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 13),
                                  fontWeight: FontWeight.w400,
                                  color: Fixcolors.grey),
                            ),
                            const Text(
                              "|",
                              style: TextStyle(color: Fixcolors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "150m",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 13),
                                  fontWeight: FontWeight.w400,
                                  color: Fixcolors.grey),
                            ),
                            const Text(
                              "|",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "200m",
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(fontSize: 13),
                                  fontWeight: FontWeight.w400,
                                  color: Fixcolors.grey),
                            ),
                            const Text(
                              "|",
                              style: TextStyle(color: Fixcolors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(bottom: 00),
                              child: Text(
                                "Max",
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(fontSize: 13),
                                    fontWeight: FontWeight.w400,
                                    color: Fixcolors.grey),
                              ),
                            ),
                            const Text(
                                "|",
                                style: TextStyle(color: Fixcolors.grey),
                              ),

                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13, right: 13),
                      child: Slider(
                        value: _currentSliderValue,
                        max: 250,
                        min: 0,
                        divisions: 5,
                        activeColor: Fixcolors.green,
                        inactiveColor: Fixcolors.grey.withOpacity(0.4),
                        // label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child:  Container(
                          height: 250,
                          width: 50,
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(8))),
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
                    Container(
                   padding: const EdgeInsets.only(top: 3,bottom: 3,left: 6,right: 6),
                      child: ElevateButton(
                        onPressed: () {
                          setState(() {
                            _goToTheLake();
                          });
                        },
                        buttonColor: Fixcolors.green,
                        textSize: 16,
                        text: Stringvalue.apply,
                        textColor: Fixcolors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ])),
            ),
          ],
        ));
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}

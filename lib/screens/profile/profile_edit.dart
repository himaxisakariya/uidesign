import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class Profile_Edit extends StatefulWidget {
  const Profile_Edit({Key? key}) : super(key: key);

  @override
  State<Profile_Edit> createState() => _Profile_EditState();
}

class _Profile_EditState extends State<Profile_Edit> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
        body: Stack(children: <Widget>[
        SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        color: Fixcolors.green,
                        child: Row(
                          children: [

                            Container(
                              margin: const EdgeInsets.only(left: 80),
                              child: const textlist(
                                text: Stringvalue.profile,
                                color: Fixcolors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ), const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          color: Fixcolors.green,
                          child: Align(
                              alignment: const Alignment(-1.4, 4.0),
                              child: Container(
                                //margin: EdgeInsets.all(20),
                                width: 400,
                                height: 125,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://patientcaremedical.com/wp-content/uploads/2018/04/male-catheters.jpg'),
                                  ),
                                ),
                              ))),
                    ],
                  ),

                ],
              ),
            ),
        ]),
      );
  }
}

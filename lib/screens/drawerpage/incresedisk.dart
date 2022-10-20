import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/urgentsale/urgent_sale.dart';

class DISK_SPACE extends StatefulWidget {
  const DISK_SPACE({Key? key}) : super(key: key);

  @override
  State<DISK_SPACE> createState() => _DISK_SPACEState();
}

class _DISK_SPACEState extends State<DISK_SPACE> {
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
                    text: Stringtext.diskspace,
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
                            text: Stringtext.ds1,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringtext.ds2,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringtext.ds3,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
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
                                    margin: const EdgeInsets.only(top: 15, bottom: 2),
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
                                    margin: const EdgeInsets.only(top: 15, bottom: 2),
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
                                    margin: const EdgeInsets.only(top: 15, bottom: 2),
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
                                    margin: const EdgeInsets.only(top: 15, bottom: 2),
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
                                    margin: const EdgeInsets.only(top: 15, bottom: 2),
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
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: ElevateButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const Urgent_sale();
                      },
                    ));
                  },
                  buttonColor: Fixcolors.green,
                  textSize: 16,
                  text: Stringtext.ds4,
                ),
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

Future<void> payment(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Center(
                child: Text(
                  Stringtext.pay,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                child: TextFields(
                  prefixIcon: const Icon(Icons.add_card_outlined),
                  hintText: Stringtext.cardnumber,
                  textInputType: TextInputType.number,
                  hintstyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  )),
                  readonly: true,
                  filed: true,
                  fillcolor: Fixcolors.grey.withOpacity(0.2),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                child: TextFields(
                  hintText: Stringtext.pay1,
                  textInputType: TextInputType.number,
                  hintstyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  )),
                  readonly: true,
                  filed: true,
                  fillcolor: Fixcolors.grey.withOpacity(0.2),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 5),
                child: TextFields(
                  hintText: Stringtext.pay2,
                  textInputType: TextInputType.number,
                  hintstyle: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  )),
                  readonly: true,
                  filed: true,
                  fillcolor: Fixcolors.grey.withOpacity(0.2),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Fixcolors.green)),
                  child: Text("Post my first ad now",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)))),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Fixcolors.black)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Remove",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500)))),
            ],
          ),
        ),
      );
    },
  );
}

customDialogBox(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            contentPadding: const EdgeInsets.only(top: 10.0),
            content: Stack(
              children: <Widget>[
                SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          Stringtext.pay,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5, bottom: 5),
                        child: TextFields(
                          prefixIcon: const Icon(Icons.add_card_outlined),
                          hintText: Stringtext.cardnumber,
                          textInputType: TextInputType.number,
                          hintstyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          )),
                          readonly: false,
                          filed: true,
                          fillcolor: Fixcolors.grey.withOpacity(0.2),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: 30,
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              child: TextFields(
                                hintText: Stringtext.pay1,
                                textInputType: TextInputType.datetime,
                                hintstyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                )),
                                readonly: false,
                                filed: true,
                                fillcolor: Fixcolors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 30,
                              margin: const EdgeInsets.only(top: 5, bottom: 5),
                              child: TextFields(
                                hintText: Stringtext.pay2,
                                textInputType: TextInputType.number,
                                hintstyle: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                )),
                                readonly: false,
                                filed: true,
                                fillcolor: Fixcolors.grey.withOpacity(0.2),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        margin: const EdgeInsets.all(5),
                        child: ElevateButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          buttonColor: Fixcolors.green,
                          textSize: 13,
                          text: Stringtext.submit,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(right: 5),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      backgroundColor: Colors.white,
                      mini: true,
                      elevation: 5.0,
                      child: SizedBox(
                        height: 13,
                        width: 13,
                        child: Image.asset(
                          Images.delete,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ));
      });
}

import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class Help_Page extends StatefulWidget {
  const Help_Page({Key? key}) : super(key: key);

  @override
  State<Help_Page> createState() => _Help_PageState();
}

class _Help_PageState extends State<Help_Page> {
  List<String> notifications = [
    (Stringvalue.notification1),
    (Stringvalue.notification2),
    (Stringvalue.notification2)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
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
                    width: 100,
                  ),
                  const textlist(
                    text: Stringvalue.drawer6,
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
            child: ListView(children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: textlist(
                  text: Stringvalue.help1,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: textlist(
                      text: Stringvalue.help2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: textlist(
                      text: Stringvalue.help3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: textlist(
                      text: Stringvalue.help2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: textlist(
                      text: Stringvalue.help3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                ),
              ),     SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: textlist(
                      text: Stringvalue.help2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: textlist(
                      text: Stringvalue.help3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                ),
              ),     SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: textlist(
                      text: Stringvalue.help2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: textlist(
                      text: Stringvalue.help3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                ),
              ),     SizedBox(
                height: 10,
              ),
              Card(
                child: ListTile(
                  title: textlist(
                      text: Stringvalue.help2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: textlist(
                      text: Stringvalue.help3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                ),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

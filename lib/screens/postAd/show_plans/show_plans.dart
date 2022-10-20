import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class Show_Plan extends StatefulWidget {
  const Show_Plan({Key? key}) : super(key: key);

  @override
  State<Show_Plan> createState() => _Show_PlanState();
}

class _Show_PlanState extends State<Show_Plan> {
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
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    const Card(
                      child: ListTile(
                          leading: textlist(
                            text: Stringtext.showplan,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                        ),
                    ),
                    Card(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const textlist(
                          text: Stringtext.showplan1,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const textlist(
                          text: Stringtext.showplan2,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),Card(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: const textlist(
                              text: Stringtext.showplan3,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Container(
                            color: Fixcolors.greenacccet.withOpacity(0.1),
                            child: SizedBox(
                              height: 300,
                              width: 300,
                              child: Stack(children: [
                                Container(
                                  margin: const EdgeInsets.all(6),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 15,top: 20,right: 30,bottom: 7),
                                    child: textlist(
                                      text: Stringtext.showplan4,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ),
                                ),
                              ]),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: const textlist(
                              text: Stringtext.showplan5,
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),


                    sizebox(),
                  ],
                ),
              ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
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
                    width: 70,
                  ),
                  const textlist(
                    text: Stringvalue.notification,
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: textlist(
                  text: Stringvalue.time,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Fixcolors.green,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(Images.registerlogo),
                            scale: 1.8)),
                  ),
                  title: const textlist(
                      text: Stringvalue.notification1,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: const textlist(
                      text: Stringvalue.mtime,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                  trailing: const Padding(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Icon(
                      Icons.more_horiz,
                      color: Fixcolors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Fixcolors.green,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(Images.registerlogo), scale: 1.8)),
                  ),
                  title: const textlist(
                      text: Stringvalue.notification2,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Fixcolors.black),
                  subtitle: const textlist(
                      text: Stringvalue.mtime,
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.grey),
                  trailing: const Padding(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Icon(
                      Icons.more_horiz,
                      color: Fixcolors.grey,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: textlist(
                  text: Stringvalue.time1,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                child: ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: Fixcolors.green,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(Images.registerlogo),
                                  scale: 1.8)),
                        ),
                        title: textlist(
                            text: notifications[index],
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black),
                        subtitle: const textlist(
                            text: Stringvalue.mtime1,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Fixcolors.grey),
                        trailing: const Padding(
                          padding: EdgeInsets.only(bottom: 35),
                          child: Icon(
                            Icons.more_horiz,
                            color: Fixcolors.grey,
                            size: 30,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

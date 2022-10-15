import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/profile/profile_edit.dart';

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
        body: Stack(children: <Widget>[
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: Fixcolors.green,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            scaffoldKey.currentState!.openDrawer();
                            setState(() {});
                          },
                          child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                        InkWell(
                          child: Container(
                              padding: const EdgeInsets.only(left: 80),
                              height: 20,
                              child: Image.asset(
                                Images.profileedit,
                              )),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Profile_Edit();
                            },));
                          },
                        ),
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
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: const Center(
                  child: textlist(
                    text: Stringvalue.profilename,
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Center(
                  child: textlist(
                    text: "Owner",
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Fixcolors.grey,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Center(
                  child: textlist(
                    text: Stringvalue.profilestorage,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    Stringvalue.myads,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      child: const textlist(
                        text: Stringvalue.profile1,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          roundimage(),
                          const textlist(
                            text: Stringvalue.profile2,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          divider(),
                          arrow(),
                          roundimage1(),
                          const textlist(
                            text: Stringvalue.profile3,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          divider(),
                          arrow(),
                          roundimage3(),
                          const textlist(
                            text: Stringvalue.profile4,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          divider(),
                          arrow(),
                          roundimage4(),
                          const textlist(
                            text: Stringvalue.profile5,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]));
  }
}

Widget roundimage() {
  return Center(
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
            radius: 35,
            backgroundColor: Fixcolors.green,
            child: Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        Images.profile1,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))),
      ],
    ),
  );
}

Widget roundimage1() {
  return Center(
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
            radius: 35,
            backgroundColor: Fixcolors.green,
            child: Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        Images.profile2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))),
      ],
    ),
  );
}

Widget roundimage3() {
  return Center(
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
            radius: 35,
            backgroundColor: Fixcolors.green,
            child: Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        Images.profile3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))),
      ],
    ),
  );
}

Widget roundimage4() {
  return Center(
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
            radius: 35,
            backgroundColor: Fixcolors.green,
            child: Container(
                padding: const EdgeInsets.all(4),
                margin: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        Images.profile4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ))),
      ],
    ),
  );
}

List<String> profileimage = [
  (Images.phoneimage),
  (Images.profile2),
  (Images.profile3),
  (Images.profile4)
];

Widget divider() {
  return const SizedBox(
    width: 100,
    child: Divider(
      thickness: 1,
      color: Fixcolors.green,
    ),
  );
}

Widget verticaldivider() {
  return const SizedBox(
    height: 30,
    child: VerticalDivider(
      thickness: 2,
      color: Fixcolors.green,
    ),
  );
}

Widget arrow() {
  return SizedBox(
    height: 30,
    child: Image.asset(Images.profilearrow),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/floatingactionbutton.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/message/chat_screen.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({Key? key}) : super(key: key);

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
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
                      width: 80,
                    ),
                    const textlist(
                      text: Stringtext.message,
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
                _tabSections(context),
              ],
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

Widget _tabSections(BuildContext context) {
  return DefaultTabController(
    length: 2,
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
                text: "Buying",
              ),
              Tab(text: "Selling"),
            ]),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          //Add this to give height
          height: MediaQuery.of(context).size.height * 0.67,
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
                          child: InkWell(
                            child: ListTile(
                              leading: Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(productimage[index]),
                                      fit: BoxFit.fill),
                                ),
                                child: Container(
                                    padding: const EdgeInsets.only(
                                        left: 40, top: 37),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(primage[index]))),
                                    )),
                              ),
                              title: textlist(
                                text: name[index],
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                              subtitle: const textlist(
                                text: Stringtext.chat,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Fixcolors.grey,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return const Chat_Screen();
                              },));
                            },
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
                        text: Stringtext.emptytext1,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ],
    ),
  );
}

List<String> name = [
  (Stringtext.person),
  (Stringtext.person1),
  (Stringtext.person2),
  (Stringtext.person3),
  (Stringtext.person4),
  (Stringtext.person5)
];
List primage = [
  (Images.pr),
  (Images.pr1),
  (Images.pr2),
  (Images.pr3),
  (Images.pr),
  (Images.pr2)
];

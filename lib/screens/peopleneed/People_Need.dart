import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class people_Need extends StatefulWidget {
  @override
  State<people_Need> createState() => _people_NeedState();
}

class _people_NeedState extends State<people_Need> {

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
                    width: 60,
                  ),
                  const textlist(
                    text: Stringtext.wpn,
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
            child: Expanded(
              child: Flex(
                direction: Axis.vertical,
                children: [
                  _tabSection(context),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 3,
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
                text: "All",
              ),
              Tab(text: "Top Ads"),
              Tab(text: "Regular Ads"),
            ]),
        SizedBox(
          //Add this to give height
          height: MediaQuery.of(context).size.height * 0.75,
          child: TabBarView(children: [
            SizedBox(
              child: GridView.builder(
                itemCount: productimage.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topRight,
                            height: 90,
                            width: 140,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: AssetImage(productimage[index]),
                                    fit: BoxFit.fill),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  padding: const EdgeInsets.all(3),
                                  child: Image.asset(LookPriorImage.likeimage),
                                )
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            textlist(
                                text: product2name[index],
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                            const SizedBox(
                              width: 4,
                            ),
                            textlist(
                                text: price[index],
                                fontWeight: FontWeight.w500,
                                color: Fixcolors.green,
                                fontSize: 10),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 35,
                              margin: const EdgeInsets.only(left: 2, right: 45),
                              decoration: BoxDecoration(
                                  color: Fixcolors.green,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, bottom: 9, top: 9),
                                      child: Image.asset(
                                        LookPriorImage.shareimage,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(right: 13),
                                    child: const Text(
                                      "Share",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
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
                  child: Image.asset(LookPriorImage.empty),
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
                  child: Image.asset(LookPriorImage.empty),
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
          ]),
        ),
      ],
    ),
  );
}

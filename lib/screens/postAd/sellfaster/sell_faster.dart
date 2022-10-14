import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/urgentsale/urgent_sale.dart';

class Sell_faster extends StatefulWidget {
  const Sell_faster({Key? key}) : super(key: key);

  @override
  State<Sell_faster> createState() => _Sell_fasterState();
}

class _Sell_fasterState extends State<Sell_faster> {
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
                    text: Stringvalue.postad,
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
                            text: Stringvalue.sellfaster,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringvalue.sell1,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.green,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: Image.asset(Images.sellfastplan),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: textlist(
                          text: Stringvalue.sell2,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 15, right: 5, bottom: 10, top: 10),
                        child: Image.asset(Images.selllocation),
                      ),
                      InkWell(
                        onTap: () async {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container()),
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
                  text: Stringvalue.sell3,
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
                text: Stringvalue.next,
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

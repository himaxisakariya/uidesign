import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

import '../../constant/Fixcolors.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
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
                    width: 80,
                  ),
                  const textlist(
                    text: Stringvalue.lwallet,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffE5E4E2),
                ),
                margin: const EdgeInsets.all(15),
                height: 100,
                child: Column(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: const textlist(
                          text: Stringvalue.balance,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        )),
                    const Center(
                        child: textlist(
                      text: Stringvalue.balance1,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 28, bottom: 5),
                child: const textlist(
                  text: Stringvalue.balance2,
                  color: Fixcolors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              addmoney(),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: ElevateButton(
                  onPressed: () {},
                  buttonColor: Fixcolors.green,
                  textSize: 16,
                  text: Stringvalue.proceed,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: const textlist(
                  text: Stringvalue.balance4,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 10),
                    height: 47,
                    width: 152,
                    decoration: BoxDecoration(
                      color: Fixcolors.greenacccet.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.all(13),
                            child: Image.asset(
                              Images.modelimage,
                              color: Fixcolors.green,
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const textlist(
                              text: Stringvalue.balance5,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Fixcolors.green),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    height: 47,
                    width: 152,
                    decoration: BoxDecoration(
                      color: Fixcolors.greenacccet.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 10, top: 10, bottom: 10),
                            child: const Icon(
                              Icons.attractions_rounded,
                              color: Fixcolors.green,
                            )),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const textlist(
                              text: Stringvalue.balance6,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Fixcolors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, bottom: 10),
                      height: 47,
                      width: 152,
                      decoration: BoxDecoration(
                        color: Fixcolors.greenacccet.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                              padding: const EdgeInsets.all(13),
                              child: const Icon(
                                Icons.sim_card_rounded,
                                color: Fixcolors.green,
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: const textlist(
                                text: Stringvalue.balance7,
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Fixcolors.green),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return const DISK_SPACE();
                      },));
                    },
                  ),
                ],
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

Widget addmoney() {
  return TextFields(
    hintText: Stringvalue.balance3,
    readonly: false,
    textInputType: TextInputType.number,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 13, color: Fixcolors.black)),
    filed: false,
  );
}

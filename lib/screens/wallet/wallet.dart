import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    text: Stringtext.lwallet,
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
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: const textlist(
                      text: Stringtext.balance,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const textlist(
                    text: Stringtext.balance1,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5, left: 28),
                child: const textlist(
                  text: Stringtext.balance2,
                  color: Fixcolors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              addmoney(),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 20, left: 20),
                child: const ElevateButton(
                  buttonColor: Fixcolors.green,
                  text: Stringtext.proceed,
                  textColor: Fixcolors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: const textlist(
                  text: Stringtext.balance4,
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
                    height: 47,
                    width: 153,
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Fixcolors.greenacccet.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 10, top: 10, bottom: 10),
                          child: const Icon(
                            Icons.attractions_rounded,
                            color: Fixcolors.green,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const textlist(
                            text: Stringtext.balance6,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Fixcolors.green,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 47,
                    width: 153,
                    margin: const EdgeInsets.only(left: 10, bottom: 10),
                    decoration: BoxDecoration(
                      color: Fixcolors.greenacccet.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 20, right: 10, top: 10, bottom: 10),
                          child: const Icon(
                            Icons.public,
                            color: Fixcolors.green,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          child: const textlist(
                            text: Stringtext.balance7,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Fixcolors.green,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              InkWell(
                child: Row(
                  children: [
                    Container(
                      height: 47,
                      width: 153,
                      margin: const EdgeInsets.only(left: 10, bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Fixcolors.greenacccet.withOpacity(0.1)),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                                left: 20, right: 10, top: 10, bottom: 10),
                            child: const Icon(
                              Icons.sim_card_rounded,
                              color: Fixcolors.green,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 4),
                            child: const textlist(
                              text: Stringtext.balance7,
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Fixcolors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DISK_SPACE(),
                      ));
                },
              )
            ]),
          ),
        ),
      ]),
    );
  }
}

Widget addmoney() {
  return TextFields(
    hintText: Stringtext.balance3,
    readonly: false,
    textInputType: TextInputType.number,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
            fontWeight: FontWeight.w400, fontSize: 13, color: Fixcolors.black)),
    filed: false,
  );
}

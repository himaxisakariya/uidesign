import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/Ad_Details/select_category.dart';
import 'package:uidesign/screens/postAd/Ad_Details/select_subcategory.dart';
import 'package:uidesign/screens/postAd/show_plans/show_plans.dart';
import 'package:uidesign/screens/postAd/urgentsale/urgent_sale_widget.dart';

import '../../../constant/widget/ebutton.dart';

class Urgent_sale extends StatefulWidget {
  const Urgent_sale({Key? key}) : super(key: key);

  @override
  State<Urgent_sale> createState() => _Urgent_saleState();
}

class _Urgent_saleState extends State<Urgent_sale> {
  final _form = GlobalKey<FormState>();
TextEditingController conutry = TextEditingController();
TextEditingController state = TextEditingController();
TextEditingController city = TextEditingController();
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
              child: Form(
                key: _form,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 2,
                    ),
                    Card(
                      child: ListTile(
                          leading: const textlist(
                            text: Stringvalue.usale,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                          trailing: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return const Show_Plan();
                                },));
                              },
                              child: Text(
                                "Show Plans",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Fixcolors.greenacccet),
                              ))),
                    ),
                    Card(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: const textlist(
                          text: Stringvalue.usale1,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    sizebox(),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale3,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale4,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child: urlusale(),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.selectcate,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const select_category();
                                      },
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  )),
                              hintText: Stringvalue.selectcate,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),filed: false,
                              readonly: true,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.subcate,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Select_subcategory();
                                      },
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  )),
                              hintText: Stringvalue.subcate,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),filed: false,
                              readonly: true,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale5,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Select_subcategory();
                                      },
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  )),
                              hintText: Stringvalue.usale5,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),filed: false,
                              readonly: true,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale9,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              textEditingController: conutry,
                              suffixIcon: IconButton(

                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  ), onPressed: () {  },),
                              hintText: Stringvalue.usale9,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),
                              readonly: true,filed: false,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale6,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              textEditingController: state,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Select_subcategory();
                                      },
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  )),
                              hintText: Stringvalue.usale6,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),
                              readonly: true,filed: false,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: const textlist(
                        text: Stringvalue.usale7,
                        color: Fixcolors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 0,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 290,
                            child:   TextFields(
                              textEditingController: city,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const Select_subcategory();
                                      },
                                    ));
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_rounded,
                                    size: 35,
                                  )),
                              hintText: Stringvalue.usale7,
                              hintstyle: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                  )),
                              readonly: true, filed: false,
                            ),
                          ),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Fixcolors.greenacccet.withOpacity(0.1)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(Images.plus),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(25),
                      child:  ElevateButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        text: Stringvalue.usale8,
                        buttonColor: Fixcolors.green,
                        textColor: Fixcolors.white,
                      ),
                    ),
                    sizebox(),
                  ],
                ),
              )),
        ),
      ]),
    );
  }
}

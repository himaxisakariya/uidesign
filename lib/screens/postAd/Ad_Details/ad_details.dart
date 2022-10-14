import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/loction/loction_page.dart';
import 'package:uidesign/screens/postAd/Ad_Details/ad_details_Widget.dart';
import 'package:uidesign/screens/postAd/Ad_Details/select_category.dart';
import 'package:uidesign/screens/postAd/Ad_Details/select_subcategory.dart';
import 'package:uidesign/screens/postAd/sellfaster/sell_faster.dart';

class ad_details extends StatefulWidget {
  const ad_details({Key? key}) : super(key: key);

  @override
  State<ad_details> createState() => _ad_detailsState();
}

class _ad_detailsState extends State<ad_details> {
  final _form = GlobalKey<FormState>();
  String a = 'offering';
  FocusNode categoryfocusnode = FocusNode();
  late SingleValueDropDownController _cnt;

  @override
  void initState() {
    super.initState();
    _cnt = SingleValueDropDownController();
  }

  @override
  void dispose() {
    _cnt.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

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
                    text: Stringvalue.postad,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ],
              )),
        ),
        sizebox(),
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
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25, bottom: 15),
                    child: const textlist(
                      text: Stringvalue.addetails,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.title,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  title(),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.amount,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  amount(),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.description,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  description(),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.adtype,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Radio(
                        value: "offering",
                        groupValue: a,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Fixcolors.green),
                        onChanged: (value) {
                          setState(() {
                            a = value.toString();
                          });
                        },
                      ),
                      Text(
                        "I'm offering",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ),
                      Radio(
                        value: "buy",
                        groupValue: a,
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Fixcolors.green),
                        onChanged: (value) {
                          setState(() {
                            a = value.toString();
                          });
                        },
                      ),
                      Text(
                        "I want to buy",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 14)),
                      ),
                    ],
                  ),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.selectcate,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  TextFields(
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
                    )),
                    readonly: true, filed: false,
                  ),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.subcate,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  TextFields(
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
                    readonly: true,
                    hintstyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    )), filed: false,
                  ),
                  sizebox(),
                  Container(
                    margin: const EdgeInsets.only(left: 28, bottom: 5),
                    child: const textlist(
                      text: Stringvalue.slocation,
                      color: Fixcolors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  TextFields(
                    suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const loction_page();
                            },
                          ));
                        },
                        icon: const Icon(Icons.mode_edit_outline)),
                    hintText: Stringvalue.slocation,
                    readonly: true,
                    hintstyle: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    )),
                    filed: false,
                  ),
                  sizebox(),
                  sizebox(),
                  ElevateButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context) {
                          return const Sell_faster();
                        },
                      ));
                    },
                    buttonColor: Fixcolors.green,
                    text: Stringvalue.next,
                    textColor: Fixcolors.white,
                  ),
                  sizebox(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/post_ad_widget.dart';

class Profile_Edit extends StatefulWidget {
  const Profile_Edit({Key? key}) : super(key: key);

  @override
  State<Profile_Edit> createState() => _Profile_EditState();
}

class _Profile_EditState extends State<Profile_Edit> {
  PostAdsViewModel? postAddPageViewModel;
  Country _default = CountryPickerUtils.getCountryByPhoneCode('91');
  bool isSwitched = false;
  bool Switched = true;
  final ImagePicker picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    color: Fixcolors.green,
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
                          width: 100,
                        ),
                        const textlist(
                          text: Stringvalue.profile,
                          color: Fixcolors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
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
                            child: InkWell(
                              child: Container(
                                padding: const EdgeInsets.only(
                                    left: 85, top: 90, bottom: 0),
                                child: const Icon(Icons.add_a_photo,
                                    color: Fixcolors.black),
                              ),
                              onTap: () {
                                setState(() {
                             imageoption(context);
                                });
                              },
                            ),
                          ))),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 30),
                child: Row(
                  children: const [
                    Expanded(
                      child: textlist(
                        text: Stringvalue.edit1,
                        color: Fixcolors.grey,
                      ),
                    ),
                    Expanded(
                      child: textlist(
                        text: Stringvalue.edit2,
                        color: Fixcolors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 3),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFields(
                        hintText: Stringvalue.edit1,
                        hintstyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Fixcolors.grey)),
                        readonly: false,
                        filed: false,
                        fillcolor: Fixcolors.grey.withOpacity(0.2),
                      ),
                    ),
                    Expanded(
                      child: TextFields(
                        hintText: Stringvalue.edit2,
                        hintstyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Fixcolors.grey,
                        )),
                        readonly: false,
                        filed: false,
                      ),
                    ),
                  ],
                ),
              ),
              sizebox(),
              TextFields(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 35,
                  ),
                  onPressed: () {},
                ),
                hintText: Stringvalue.edit3,
                readonly: true,
                hintstyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                filed: false,
              ),
              sizebox(),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 5, right: 250),
                child: const textlist(
                  text: Stringvalue.address,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              TextFields(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(6),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.location_on)),
                ),
                hintText: Stringvalue.edit4,
                readonly: true,
                hintstyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                filed: false,
              ),
              sizebox(),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 5, right: 210),
                child: const textlist(
                  text: Stringvalue.emailaddress,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              TextFields(
                hintText: Stringvalue.emailex,
                readonly: false,
                hintstyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                filed: false,
              ),
              sizebox(),
              Container(
                margin: const EdgeInsets.only(left: 15, bottom: 5, right: 30),
                child: const textlist(
                  text: Stringvalue.edit5,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
              sizebox(),
              InkWell(
                child: Container(
                  height: 30,
                  width: 85,
                  decoration: BoxDecoration(
                    color: Fixcolors.green.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(right: 220, bottom: 10),
                  child: const Padding(
                      padding: EdgeInsets.all(7),
                      child: textlist(
                        text: Stringvalue.payactive,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Fixcolors.green,
                      )),
                ),
                onTap: () {
                  customDialogBox(context);
                },
              ),
              const SizedBox(),
              Container(
                margin: const EdgeInsets.only(left: 10, bottom: 5, right: 250),
                child: const textlist(
                  text: Stringvalue.edit6,
                  color: Fixcolors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              TextFields(
                hintText: Stringvalue.edit7,
                readonly: false,
                hintstyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                )),
                filed: false,
              ),
              sizebox(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Fixcolors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: ListTile(
                            onTap: _openCountryPickerDialog,
                            title: _buildDialogItem(_default),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: phonenumber(),
                    ),
                  ],
                ),
              ),
              sizebox(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: const textlist(
                        text: Stringvalue.edit8,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 90),
                      child: Switch(
                        activeColor: Fixcolors.green,
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = !isSwitched;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 25),
                      child: const textlist(
                        text: Stringvalue.edit8,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 90),
                      child: Switch(
                        activeColor: Fixcolors.green,
                        value: Switched,
                        onChanged: (value) {
                          setState(() {
                            Switched = !Switched;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Expanded(
                    child: ElevateButton(
                      buttonColor: Color(0xffE1DED5),
                      text: Stringvalue.cancel,
                      textColor: Fixcolors.black,
                    ),
                  ),
                  Expanded(
                    child: ElevateButton(
                      buttonColor: Fixcolors.green,
                      text: Stringvalue.save,
                      textColor: Fixcolors.white,
                    ),
                  ),
                ],
              ),
              sizebox(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Flexible(
              child: Text(
            "(${country.name})+${country.phoneCode}",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            )),
          )),
        ],
      );

  void _openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.black),
          child: CountryPickerDialog(
            isSearchable: true,
            titlePadding: const EdgeInsets.all(10),
            searchInputDecoration: const InputDecoration(hintText: 'Search...'),
            title: const Text('Please select your phone code'),
            onValuePicked: (Country country) =>
                setState(() => _default = country),
            itemBuilder: _buildDialogItem,
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
          ),
        ),
      );
}
imageoption(BuildContext context) {
  final ImagePicker _picker = ImagePicker();

  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        )),
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return SizedBox(
            height: 149,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  InkWell(
                    onTap: () async {
                      await _picker.pickImage(
                          source: ImageSource
                              .camera);
                      Navigator.pop(context);
                    },
                    child: const textlist(
                      text: Stringvalue.imagetake,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Fixcolors.black,
                    ),
                  ),
                  const Divider(),
                  InkWell(
                    onTap: () async {
                      Navigator.pop(context);
                      await _picker.pickImage(
                          source: ImageSource
                              .gallery);

                    },
                    child: const textlist(
                      text: Stringvalue.imagefile,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const Divider(),
                  InkWell(
                    child: const textlist(
                      text: Stringvalue.cancel,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}


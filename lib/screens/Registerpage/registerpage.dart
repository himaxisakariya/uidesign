import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/app_button.dart';
import 'package:uidesign/constant/widget/divider.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Country _default = CountryPickerUtils.getCountryByPhoneCode('91');
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Center(
          child: SizedBox(
              height: 56,
              width: 87,
              child: Image.asset(
                Images.registerlogo,
              )),
        ),
        sizebox(),
        Center(
          child: Text(
            Stringvalue.Register,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 26,
                    color: Fixcolors.white)),
          ),
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
                      height: 25,
                    ),
                    name(),
                    sizebox(),
                    email(),
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
                    password(),
                    sizebox(),
                    confirmpassword(),
                    sizebox(),
                    ElevateButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                        }
                      },
                      buttonColor: Fixcolors.green,
                      text: Stringvalue.registerbutton,
                      textColor: Fixcolors.white,
                    ),
                    sizebox(),
                    Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: divideror()),
                    sizebox(),
                    facebookAppButton(
                      buttonColor: Fixcolors.blue,
                      buttonIcon: Images.facebook,
                      text: Stringvalue.facebooklogin,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Applebutton(
                      buttonColor: Fixcolors.black,
                      buttonIcon: Images.appleimage,
                      text: Stringvalue.applelogin,
                    ),
                    sizebox(),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 17, right: 3, top: 3, bottom: 0.0),
                        child: Text(
                            "By Clicking on “Register with Facebook” or “Register” you Agree "
                            "To the Lookprior Terms of service and privacy policy",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Fixcolors.grey))),
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

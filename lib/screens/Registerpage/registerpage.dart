import 'dart:convert';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/app_button.dart';
import 'package:uidesign/constant/widget/auth_service.dart';
import 'package:uidesign/constant/widget/divider.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/constant/widget/snackbar.dart';
import 'package:uidesign/rest_api/api.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/home_page.dart';
import 'package:uidesign/screens/login/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  Country _selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('91');
  final formGlobalKey = GlobalKey<FormState>();
  AuthService authService = AuthService();
  TextEditingController userName = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  String a = "1";
  bool status = false;

  RegisterPageViewModel? registerPageViewModel;

  @override
  void initState() {
    super.initState();
    FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
    firebaseMessaging.getToken().then((token) {
      logs("token is $token");
      RestService.token = token!;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Fixcolors.green,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    registerPageViewModel ??
        (registerPageViewModel = RegisterPageViewModel(this));
    void signup(String email, name, password) async {
      try {
        Response response = await post(
            Uri.parse('https://lookprstage.com/admin/api/v1/data/signup'),
            body: {
              "email": emailc.text,
              "name": userName.text,
              "password": passwordc.text,
              "phoneNumber": phoneNumber.text,
              "countryCode": "",
              "deviceToken":
                  "dqNVHOKXRYOQsj-pArHar5:APA91bELERcQ9UCDkZiyn4X7dpCfs9ij1-0ehCQXEaY-MqvMQ7DvMaKspC1JHH8gTAuvHSbiCeTZS_Kw5Ni8gwxrT9htSRTUrld0uJ4nAZSAvDy1MTCeqxZPGDoR1k5ugueNvaswseWz",
              "deviceType": "1",
            });
        print("statuscode ---> ${response.statusCode}");
        if (response.statusCode == 200) {
          var data = jsonDecode(response.body.toString());
          if (data['Success'] == 'true') {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
          } else {
            snackbar(
              context,
              text: "${data['Message']}",
            );
          }
          print(data['Success']);
          print(data['Message']);
          print('signup successfully');
        } else {
          print('failed');
        }
      } catch (e) {
        print(e.toString());
      }
    }

    return WillPopScope(
      onWillPop: () {
        return registerPageViewModel!.backButton(context);
      },
      child: Scaffold(
          backgroundColor: Fixcolors.green,
          body: Column(children: [
            Container(
              color: Fixcolors.green,
              child: Column(children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                      height: 70,
                      width: 87,
                      child: Image.asset(
                        Images.registerlogo,
                      )),
                ),
                Text(
                  Stringtext.Register,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: Fixcolors.white)),
                ),
              ]),
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
                  child: Stack(children: [
                    Form(
                      key: formGlobalKey,
                      child: ListView(
                        children: [
                          name(userName),
                          sizebox(),
                          emailt(emailc),
                          sizebox(),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      openCountryPickerDialog();
                                    },
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Fixcolors.grey)),
                                      child: ListTile(
                                        title: _buildDialogItem(
                                            _selectedDialogCountry),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: phone(phoneNumber),
                                ),
                              ],
                            ),
                          ),
                          sizebox(),
                          passwordt(passwordc),
                          sizebox(),
                          cpassword(confirmpassword),
                          sizebox(),
                          ElevateButton(
                            onPressed: () async {
                              // submit();
                              signup(
                                  emailc.text.toString(),
                                  userName.text.toString(),
                                  passwordc.text.toString());
                              if (formGlobalKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                              }
                            },
                            buttonColor: Fixcolors.green,
                            text: Stringtext.Register,
                            textColor: Fixcolors.white,
                          ),
                          sizebox(),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 30, right: 30),
                              child: divideror()),
                          sizebox(),
                          facebookButton(
                            onTap: () async {
                              LoginResult? result =
                                  await authService.facebookLogin();
                              if (result != null) {
                                print(
                                    "result for facebook -->${result.message}");
                              }
                              // await registerPageViewModel!.facebookmethod(
                              //     context,
                              //     result.status,
                              //     result!.accessToken,
                              //     result!.message,
                              //     status = true);
                              // setState(() {
                              //   Navigator.push(
                              //       context,
                              //       MaterialPageRoute(
                              //         builder: (context) => LoginPage(),
                              //       ));
                              // });
                            },
                            buttonColor: Fixcolors.blue,
                            buttonIcon: Images.facebook,
                            text: Stringtext.facebooklogin,
                          ),
                          sizebox(),
                          Applebutton(
                            onTap: () async {
                              final result = await authService.googleSign();

                              await registerPageViewModel!.googleMethod(
                                  context,
                                  result!.id,
                                  result!.email,
                                  result!.displayName,
                                  status = true);
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              });
                            },
                            buttonColor: Fixcolors.black,
                            buttonIcon: Images.appleimage,
                            text: Stringtext.applelogin,
                          ),
                          privacyText(context,
                              """  By Clicking on “Register with Facebook” or “Register” you Agree
            To the Lookprior Terms of Service and Privacy Policy"""),
                        ],
                      ),
                    ),
                    status == false
                        ? const SizedBox()
                        : Center(
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                  )),
                              child: const Center(
                                  child: SizedBox(
                                      height: 40,
                                      width: 40,
                                      child: CircularProgressIndicator())),
                            ),
                          ),
                  ])),
            ),
          ])),
    );
  }

  Widget _buildDialogItem(Country country) => Padding(
        padding: const EdgeInsets.only(bottom: 13),
        child: Row(
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
        ),
      );

  void openCountryPickerDialog() => showDialog(
        context: context,
        builder: (context) => Theme(
          data: Theme.of(context).copyWith(primaryColor: Colors.pink),
          child: CountryPickerDialog(
            titlePadding: const EdgeInsets.all(8.0),
            searchCursorColor: Colors.pinkAccent,
            searchInputDecoration: const InputDecoration(hintText: 'Search...'),
            isSearchable: true,
            title: const Text('Select your phone code'),
            onValuePicked: (Country country) =>
                setState(() => _selectedDialogCountry = country),
            itemBuilder: _buildDialogItem,
            priorityList: [
              CountryPickerUtils.getCountryByIsoCode('TR'),
              CountryPickerUtils.getCountryByIsoCode('US'),
            ],
          ),
        ),
      );

// submit() async {
//   final isValid = formGlobalKey.currentState?.validate();
//   if (isValid!) {
//     if (isValid == true) {
//       await registerPageViewModel?.signUpMethod(
//           context,
//           userName,
//           email,
//           phoneNumber,
//           password,
//           confiPassword,
//           _selectedDialogCountry,
//           RestServices.token,
//           a,
//           status = true);
//     } else {
//       const Text("");
//     }
//   }
//   formGlobalKey.currentState?.save();
// }
}

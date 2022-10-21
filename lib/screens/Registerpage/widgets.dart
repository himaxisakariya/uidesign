import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/classmodel/login_classmodel.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/shared_pre.dart';
import 'package:uidesign/constant/widget/snackbar.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/rest_api/api.dart';
import 'package:uidesign/screens/Registerpage/registerpage.dart';
import 'package:uidesign/screens/homepage/home_page.dart';

class RegisterPageViewModel {
  final RegisterPageState registerPageState;

  RegisterPageViewModel(this.registerPageState);

  Sharedpre Sharedprefrence = Sharedpre();

  //
  // signUpMethod(
  //     BuildContext context,
  //     TextEditingController userName,
  //     TextEditingController email,
  //     TextEditingController phoneNumber,
  //     TextEditingController password,
  //     TextEditingController confiPassword,
  //     Country selectedDialogCountry,
  //     String token,
  //     String a,
  //     bool status,
  //     ) async {
  //   try {
  //     registerPageState.setState(() {
  //       status = true;
  //     });
  //     LookPriorSignUp signMap = LookPriorSignUp(
  //         name: userName.text,
  //         email: email.text,
  //         countryCode: selectedDialogCountry.phoneCode,
  //         phoneNumber: phoneNumber.text,
  //         password: password.text,
  //         deviceToken: token,
  //         deviceType: a);
  //     String? signUserRespone = await RestServices.postRestMethods(
  //         endpoints: RestServices.signApi, bodyParam: signMap.toJson());
  //     if (signUserRespone != null && signUserRespone.isNotEmpty) {
  //       Map<String, dynamic> signUserResponseMap = jsonDecode(signUserRespone);
  //       if (signUserResponseMap.containsKey('Success') &&
  //           signUserResponseMap['Success']) {
  //         snackbar(context, text: "${signUserResponseMap['Message']}");
  //       Navigator.push(context, MaterialPageRoute(builder: (context) {
  //         return LoginPage();
  //       },));
  //       } else {
  //         registerPageState.status = false;
  //         registerPageState.setState(() {
  //           snackbar(context, text: "${signUserResponseMap['Message']}");
  //         }
  //         );
  //       }
  //     }
  //   } on SocketException catch (e) {
  //     logs("Catch socket in signUpMethod --> ${e.message}");
  //     logs(e.message);
  //     registerPageState.setState(() {
  //       status = false;
  //     });
  //   }
  // }

  backButton(BuildContext context) {
    Navigator.of(context).pop(true);
  }

  googleMethod(
    BuildContext context,
    String id,
    String email,
    String? displayName,
    bool status,
  ) async {
    try {
      registerPageState.setState(() {
        status = true;
      });

      Map<String, dynamic> googleLoginMap = {
        'devicetoken': await FirebaseMessaging.instance.getToken(),
        "devicetype": 1,
        "email": email,
        "googleId": id,
        "userName": displayName,
        "facebookProfileUrl": "",
        "mobileVersion": "Android",
        "osVersion": "10.11",
        "ViaSocial": 2
      };
      logs('LoginMap --> $googleLoginMap');
      String? googleUserResponse = await RestService.postRestMethods(
          endpoints: RestService.googleApi, bodyParam: googleLoginMap);
      if (googleUserResponse != null && googleUserResponse.isNotEmpty) {
        Map<String, dynamic> googleUserResponseMap =
            jsonDecode(googleUserResponse);
        if (googleUserResponseMap.containsKey('Success') &&
            googleUserResponseMap['Success']) {
          LoginModel loginModel = loginModelFromJson(googleUserResponse);
          logs('Loginmmodel --> ${loginModel.toJson()}');

          await Sharedprefrence.setPrefStringValue(Sharedprefrence.store,
              "${googleUserResponseMap['access_token']}");

          snackbar(context, text: "${googleUserResponseMap['Message']}");
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ));
        } else {
          registerPageState.status = false;
          registerPageState.setState(() {
            snackbar(context, text: "${googleUserResponseMap['Message']}");
          });
        }
      }
    } on SocketException catch (e) {
      logs("Catch socket in loginUPMethod --> ${e.message}");
      logs(e.message);
      registerPageState.setState(() {
        status = true;
      });
    }
  }
  // LoginResult? result = await authService.facebookLogin();
  // if(result!=null)
  // {}
  facebookmethod(
      BuildContext context,
      String id,
      String email,
      String? displayName,
      bool status,
      ) async {
    try {
      registerPageState.setState(() {
        status = true;
      });

      Map<String, dynamic> facebookLoginMap = {
        'devicetoken': await FirebaseMessaging.instance.getToken(),
        "devicetype": 1,
        "email": email,
        "fbId": id,
        "userName": displayName,
        "facebookProfileUrl": "",
        "mobileVersion": "Android",
        "osVersion": "10.11",
        "ViaSocial": 2
      };
      logs('LoginMap --> $facebookLoginMap');
      String? facebookUserResponse = await RestService.postRestMethods(
          endpoints: RestService.facbookApi, bodyParam: facebookLoginMap);
      if (facebookUserResponse != null && facebookUserResponse.isNotEmpty) {
        Map<String, dynamic> facebookUserResponseMap =
        jsonDecode(facebookUserResponse);
        if (facebookUserResponseMap.containsKey('Success') &&
            facebookUserResponseMap['Success']) {
          LoginModel loginModel = loginModelFromJson(facebookUserResponse);
          logs('Loginmmodel --> ${loginModel.toJson()}');

          await Sharedprefrence.setPrefStringValue(Sharedprefrence.store,
              "${facebookUserResponseMap['access_token']}");

          snackbar(context, text: "${facebookUserResponseMap['Message']}");
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return  const HomePage();
            },
          ));
        } else {
          registerPageState.status = false;
          registerPageState.setState(() {
            snackbar(context, text: "${facebookUserResponseMap['Message']}");
          });
        }
      }
    } on SocketException catch (e) {
      logs("error in facebooksignup --> ${e.message}");
      logs(e.message);
      registerPageState.setState(() {
        status = true;
      });
    }
  }
}

Widget name(TextEditingController userName) {
  return TextFields(
    textInputType: TextInputType.name,
    textEditingController: userName,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter user name.';
      }
      return null;
    },
    prefixIcon: Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff2ECC71).withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          LookPriorImage.person,
        ),
      ),
    ),
    hintText: Stringtext.name,
    filed: false,
    readonly: false,
  );
}

Widget emailt(TextEditingController emailc) {
  return TextFields(
    textInputType: TextInputType.emailAddress,
    textEditingController: emailc,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
        return 'Enter your email address.';
      }
      return null;
    },
    prefixIcon: Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff2ECC71).withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          LookPriorImage.email,
        ),
      ),
    ),
    hintText: Stringtext.emailaddress,
    filed: false,
    readonly: false,
  );
}

Widget sizebox() {
  return const SizedBox(
    height: 15,
  );
}

Widget cpassword(TextEditingController confirmpassword) {
  return TextFields(
    textInputType: TextInputType.visiblePassword,
    textEditingController: confirmpassword,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter your Confirm Password.';
      }
      return null;
    },
    filed: false,
    readonly: false,
    prefixIcon: Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff2ECC71).withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          LookPriorImage.lock,
        ),
      ),
    ),
    hintText: Stringtext.cpassword,
  );
}

Widget passwordt(TextEditingController passwordc) {
  return TextFields(
    textInputType: TextInputType.visiblePassword,
    textEditingController: passwordc,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter Password.';
      }
      return null;
    },
    prefixIcon: Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff2ECC71).withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          LookPriorImage.lock,
        ),
      ),
    ),
    hintText: Stringtext.password,
    filed: false,
    readonly: false,
  );
}

Widget phone(TextEditingController phoneNumber) {
  return TextFields(
    textInputType: TextInputType.phone,
    textEditingController: phoneNumber,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter PhoneNumber';
      }
      return null;
    },
    filed: false,
    readonly: false,
    prefixIcon: Container(
      height: 32,
      width: 32,
      margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff2ECC71).withOpacity(0.1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          LookPriorImage.phoneimage,
        ),
      ),
    ),
    hintText: Stringtext.phonenumber,
  );
}

Widget privacyText(BuildContext context, String name) {
  return Text(
    name,
    style: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 11,
      color: Fixcolors.grey,
      fontWeight: FontWeight.w500,
    )),
  );
}

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:uidesign/constant/Fixcolors.dart';
// import 'package:uidesign/constant/Image.dart';
// import 'package:uidesign/constant/String.dart';
// import 'package:uidesign/constant/widget/textfield.dart';
//
// Widget divider() {
//   return Row(
//     children: const [
//       SizedBox(
//         width: 145,
//         child: Divider(
//           color: Fixcolors.grey,
//         ),
//       ),
//       Text(
//         "or",
//         style: TextStyle(color: Fixcolors.grey),
//       ),
//       SizedBox(
//         width: 139,
//         child: Divider(
//           color: Fixcolors.grey,
//         ),
//       ),
//     ],
//   );
// }
//
// Widget name(TextEditingController namecontroller) {
//   return TextFields(
//     onFieldSubmitted: (value) {
//       namecontroller.text = value;
//     },
//     textInputType: TextInputType.name,
//     textEditingController: namecontroller,
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'enter your name.';
//       }
//       return null;
//     },
//     prefixIcon: Container(
//       height: 32,
//       width: 32,
//       margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xff2ECC71).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.person,
//         ),
//       ),
//     ),
//     hintText: "Your Name",
//     readonly: false,
//     filed: false,
//   );
// }
//
// Widget email(TextEditingController emailcontroller) {
//   return TextFields(
//     onFieldSubmitted: (value) {
//       emailcontroller.text = value;
//     },
//     textInputType: TextInputType.emailAddress,
//     textEditingController: emailcontroller,
//     validator: (value) {
//       if (value!.isEmpty ||
//           !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//               .hasMatch(value)) {
//         return 'enter your email addresss.';
//       }
//       return null;
//     },
//     prefixIcon: Container(
//       height: 32,
//       width: 32,
//       margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xff2ECC71).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.email,
//         ),
//       ),
//     ),
//     hintText: Stringtext.emailaddress,
//     readonly: false,
//     filed: false,
//   );
// }
//
// Widget password(TextEditingController passwordcontroller) {
//   return TextFields(
//     onFieldSubmitted: (value) {
//       passwordcontroller.text = value;
//     },
//     textInputType: TextInputType.visiblePassword,
//     textEditingController: passwordcontroller,
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'enter your Password.';
//       }
//       return null;
//     },
//     prefixIcon: Container(
//       height: 32,
//       width: 32,
//       margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xff2ECC71).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.lock,
//         ),
//       ),
//     ),
//     hintText: Stringtext.password,
//     readonly: false,
//     filed: false,
//   );
// }
//
// Widget confirmpassword(TextEditingController cpasswordcontroller) {
//   return TextFields(
//     onFieldSubmitted: (value) {
//       cpasswordcontroller.text = value;
//     },
//     textInputType: TextInputType.visiblePassword,
//     textEditingController: cpasswordcontroller,
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'enter your Confirm Password.';
//       }
//       return null;
//     },
//     prefixIcon: Container(
//       height: 32,
//       width: 32,
//       margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xff2ECC71).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.lock,
//         ),
//       ),
//     ),
//     hintText: Stringtext.cpassword,
//     readonly: false,
//     filed: false,
//   );
// }
//
// Widget phone(TextEditingController phonecontroller) {
//   return TextFields(
//     onFieldSubmitted: (value) {
//       phonecontroller.text = value;
//     },
//     textInputType: TextInputType.phone,
//     textEditingController: phonecontroller,
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'enter your PhoneNumber';
//       }
//       return null;
//     },
//     inputFormatters: [LengthLimitingTextInputFormatter(10)],
//     prefixIcon: Container(
//       height: 32,
//       width: 32,
//       margin: const EdgeInsets.only(top: 7, left: 9, bottom: 8, right: 12),
//       alignment: Alignment.center,
//       decoration: BoxDecoration(
//         color: const Color(0xff2ECC71).withOpacity(0.1),
//         borderRadius: BorderRadius.circular(5),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(Images.call),
//       ),
//     ),
//     hintText: Stringtext.phonenumber,
//     readonly: false,
//     filed: false,
//   );
// }
//
// Widget sizebox() {
//   return const SizedBox(
//     height: 13,
//   );
// }
// Widget privacyText(BuildContext context, String name) {
//   return Text(
//     name,
//     style: GoogleFonts.poppins(
//         textStyle: const TextStyle(
//           fontSize: 11,
//           color: Fixcolors.grey,
//           fontWeight: FontWeight.w500,
//         )),
//   );
// }
import 'dart:convert';
import 'dart:io';
import 'package:country_pickers/country.dart';
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

  ShredPreference shredPreference = ShredPreference();
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

  googleSignMethod(
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
      print('LoginMap --> $googleLoginMap');
      String? googleUserResponse = await RestService.postRestMethods(
          endpoints: RestService.googleApi, bodyParam: googleLoginMap);
      if (googleUserResponse != null && googleUserResponse.isNotEmpty) {
        Map<String, dynamic> googleUserResponseMap =
        jsonDecode(googleUserResponse);
        if (googleUserResponseMap.containsKey('Success') &&
            googleUserResponseMap['Success']) {
          LoginModel loginModel = loginModelFromJson(googleUserResponse);
          print('Loginmmodel --> ${loginModel.toJson()}');

          await shredPreference.setPrefStringValue(shredPreference.store,
              "${googleUserResponseMap['access_token']}");

          snackbar(context, text: "${googleUserResponseMap['Message']}");
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return HomePage();
        },));
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
    prefixIcon:  Container(
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
          Images.person,
        ),
      ),
    ),
    hintText: Stringtext.name, filed: false,readonly: false,
  );
}
Widget emailt(TextEditingController email) {
  return TextFields(
    textInputType: TextInputType.emailAddress,
    textEditingController: email,
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
          Images.email,
        ),
      ),
    ),
    hintText: Stringtext.emailaddress,filed: false,readonly: false,
  );
}

Widget sizebox() {
  return const SizedBox(
    height: 15,
  );
}

Widget cpassword(TextEditingController confiPassword) {
  return TextFields(
    textInputType: TextInputType.visiblePassword,
    textEditingController: confiPassword,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter your Confirm Password.';
      }
      return null;
    },filed: false,readonly: false,
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
          Images.lock,
        ),
      ),
    ),
    hintText: Stringtext.cpassword,
  );
}

Widget passwordt(TextEditingController password) {
  return TextFields(
    textInputType: TextInputType.visiblePassword,
    textEditingController: password,
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
          Images.lock,
        ),
      ),
    ),
    hintText: Stringtext.password,filed: false,readonly: false,
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
    },filed: false,readonly: false,
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
          Images.phoneimage,
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
import 'dart:convert';
import 'dart:io';
import 'package:country_pickers/country.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/registerpage2.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';


class RegisterPageViewModel {
  final RegisterPageState registerPageState;

  RegisterPageViewModel(this.registerPageState);

  //ShredPreference shredPreference = ShredPreference();

  signUpMethod(
      BuildContext context,
      TextEditingController userName,
      TextEditingController email,
      TextEditingController phoneNumber,
      TextEditingController password,
      TextEditingController confiPassword,
      Country selectedDialogCountry,
      String mToken,
      String a,
      bool status,
      ) async {
    try {
      registerPageState.setState(() {
        status = true;
      });
      LookPriorSignUp signMap = LookPriorSignUp(
          name: userName.text,
          email: email.text,
          countryCode: selectedDialogCountry.phoneCode,
          phoneNumber: phoneNumber.text,
          password: password.text,
          deviceToken: mToken,
          deviceType: a);
      String? signUserRespone = await RestServices.postRestMethods(
          endpoints: RestServices.signApi, bodyParam: signMap.toJson());
      if (signUserRespone != null && signUserRespone.isNotEmpty) {
        Map<String, dynamic> signUserResponseMap = jsonDecode(signUserRespone);
        if (signUserResponseMap.containsKey('Success') &&
            signUserResponseMap['Success']) {
          appSnackBar(context, text: "${signUserResponseMap['Message']}");
          Navigator.pushAndRemoveUntil(
            context,
            CommonNavigator(child: LoginPage()),
                (route) => false,
          );
        } else {
          registerPageState.status = false;
          registerPageState.setState(() {
            appSnackBar(context, text: "${signUserResponseMap['Message']}");
          });
        }
      }
    } on SocketException catch (e) {
      log("Catch socket in signUpMethod --> ${e.message}");
      log(e.message);
      registerPageState.setState(() {
        status = false;
      });
    }
  }

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
      String? googleUserResponse = await RestServices.postRestMethods(
          endpoints: RestServices.googleApi, bodyParam: googleLoginMap);
      if (googleUserResponse != null && googleUserResponse.isNotEmpty) {
        Map<String, dynamic> googleUserResponseMap =
        jsonDecode(googleUserResponse);
        if (googleUserResponseMap.containsKey('Success') &&
            googleUserResponseMap['Success']) {
          LoginModel loginModel = loginModelFromJson(googleUserResponse);
          print('Loginmmodel --> ${loginModel.toJson()}');

          await shredPreference.setPrefStringValue(shredPreference.store,
              "${googleUserResponseMap['access_token']}");

          appSnackBar(context, text: "${googleUserResponseMap['Message']}");
          Navigator.pushAndRemoveUntil(
            context,
            CommonNavigator(child: HomePage()),
                (route) => false,
          );
        } else {
          registerPageState.status = false;
          registerPageState.setState(() {
            appSnackBar(context, text: "${googleUserResponseMap['Message']}");
          });
        }
      }
    } on SocketException catch (e) {
      log("Catch socket in loginUPMethod --> ${e.message}");
      log(e.message);
      registerPageState.setState(() {
        status = true;
      });
    }
  }
}

Widget sizeMaring() {
  return const SizedBox(
    height: 15,
  );
}

Widget divderrow() {
  return Row(
    children: const [
      SizedBox(
        width: 145,
        child: Divider(
          color: Fixcolors.grey,
        ),
      ),
      textlist(
        StringResources.Or,
        style: TextStyle(color: ColorResource.grey),
      ),
      SizedBox(
        width: 139,
        child: Divider(
          color: ColorResource.grey,
        ),
      ),
    ],
  );
}

Widget confmPasswordTextfFlied(TextEditingController confiPassword) {
  return AppTextField(
    obscureText: true,
    textInputType: TextInputType.visiblePassword,
    textEditingController: confiPassword,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter Confirm Password.';
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
        child: SvgPicture.asset(
          ImageResources.confmpasswordicon,
        ),
      ),
    ),
    hintText: StringResources.confirmpassword,
  );
}

Widget passwordTextfFlied(TextEditingController password) {
  return AppTextField(
    obscureText: true,
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
        child: SvgPicture.asset(
          ImageResources.passwordicon,
        ),
      ),
    ),
    hintText: StringResources.password,
  );
}

Widget phonenumaberTextfFlied(TextEditingController phoneNumber) {
  return AppTextField(
    textInputType: TextInputType.phone,
    textEditingController: phoneNumber,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter PhoneNumber';
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
        child: SvgPicture.asset(
          ImageResources.phoneicon,
        ),
      ),
    ),
    hintText: StringResources.phonenumber,
  );
}

Widget emailTextFiled(TextEditingController email) {
  return AppTextField(
    textInputType: TextInputType.emailAddress,
    textEditingController: email,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
        return 'Please enter your email addresss.';
      }
      return null;
    },
    prefixIcon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        height: 10,
        ImageResources.emailicon,
      ),
    ),
    hintText: StringResources.emailaddres,
  );
}

Widget nameTextFiled(TextEditingController userName) {
  return AppTextField(
    textInputType: TextInputType.name,
    textEditingController: userName,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter user name.';
      }
      return null;
    },
    prefixIcon: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(
        height: 10,
        ImageResources.youricon,
      ),
    ),
    hintText: StringResources.yourname,
  );
}

Widget privacyText(BuildContext context, String name) {
  return Text(
    name,
    style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 11,
          color: ColorResource.grey,
          fontWeight: FontWeight.w500,
        )),
  );
}
import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:uidesign/classmodel/login_classmodel.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/snackbar.dart';
import 'package:uidesign/constant/widget/textfield.dart';
import 'package:uidesign/rest_api/api.dart';
import 'package:uidesign/screens/homepage/home_page.dart';
import 'package:uidesign/screens/login/loginpage.dart';


class LoginPageViewModel {
  final LoginPageState loginPageState;

  LoginPageViewModel(this.loginPageState);


  Future<void> loginUPMethod(
      BuildContext context,
      TextEditingController email,
      TextEditingController password,
      bool status,
      ) async {
    try {
      loginPageState.setState(() {
        status = true;
      });
      Map<String, dynamic> loginMap = {
        'devicetoken': await FirebaseMessaging.instance.getToken(),
        'devicetype': "2",
        'email': email.text,
        'password': password.text.trim(),
        'userName': "",
        'facebookProfileUrl': "",
        "mobileVersion": Platform.isAndroid ? 'Android' : 'IOS',
        "osVersion": "10.11"
      };
      logs('LoginMap --> $loginMap');
      String? loginUserResponse = await RestService.postRestMethods(
          endpoints: RestService.loginApi, bodyParam: loginMap);
      if (loginUserResponse != null && loginUserResponse.isNotEmpty) {
        Map<String, dynamic> loginUserResponseMap =
        jsonDecode(loginUserResponse);
        if (loginUserResponseMap.containsKey('Success') &&
            loginUserResponseMap['Success']) {
          LoginModel loginModel = loginModelFromJson(loginUserResponse);
          logs('Loginmodel --> ${loginModel.toJson()}');

          // await shredPreference.setPrefStringValue(
          //     shredPreference.store, "${loginUserResponseMap['access_token']}");

          snackbar(context, text: "${loginUserResponseMap['Message']}");
         Navigator.push(context, MaterialPageRoute(builder: (context) {
           return HomePage();
         },));
        } else {
          loginPageState.status = false;
          loginPageState.setState(() {
            snackbar(context, text: "${loginUserResponseMap['Message']}");
          });
        }
      }
    } on SocketException catch (e) {
      logs("Catch socket in loginUPMethod --> ${e.message}");
      logs(e.message);
      loginPageState.setState(() {
        status = false;
      });
    }
  }
}

Widget email(TextEditingController emailcontroller) {
  return TextFields(
    onFieldSubmitted: (value) {
      emailcontroller.text = value;
    },
    textInputType: TextInputType.emailAddress,
    textEditingController: emailcontroller,
    validator: (value) {
      if (value!.isEmpty ||
          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
        return 'enter your email addresss.';
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
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          LookPriorImage.email,
        ),
      ),
    ),
    hintText: Stringtext.emailaddress,
    readonly: false,
    filed: false,
  );
}

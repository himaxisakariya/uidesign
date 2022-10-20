// // import 'package:flutter/material.dart';
// //
// //
// // ///custom listtile
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   static const String _title = 'Flutter Code Sample';
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: _title,
// //       home: Scaffold(
// //         appBar: AppBar(title: const Text(_title)),
// //         body: const MyStatelessWidget(),
// //       ),
// //     );
// //   }
// // }
// //
// // class CustomListItem extends StatelessWidget {
// //   const CustomListItem({
// //     super.key,
// //     required this.thumbnail,
// //     required this.title,
// //     required this.user,
// //     required this.viewCount,
// //   });
// //
// //   final Widget thumbnail;
// //   final String title;
// //   final String user;
// //   final int viewCount;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 5.0),
// //       child: Row(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: <Widget>[
// //           Expanded(
// //             flex: 2,
// //             child: thumbnail,
// //           ),
// //           Expanded(
// //             flex: 3,
// //             child: _VideoDescription(
// //               title: title,
// //               user: user,
// //               viewCount: viewCount,
// //             ),
// //           ),
// //           const Icon(
// //             Icons.more_vert,
// //             size: 16.0,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class _VideoDescription extends StatelessWidget {
// //   const _VideoDescription({
// //     required this.title,
// //     required this.user,
// //     required this.viewCount,
// //   });
// //
// //   final String title;
// //   final String user;
// //   final int viewCount;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: <Widget>[
// //           Text(
// //             title,
// //             style: const TextStyle(
// //               fontWeight: FontWeight.w500,
// //               fontSize: 14.0,
// //             ),
// //           ),
// //           const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
// //           Text(
// //             user,
// //             style: const TextStyle(fontSize: 10.0),
// //           ),
// //           const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
// //           Text(
// //             '$viewCount views',
// //             style: const TextStyle(fontSize: 10.0),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class MyStatelessWidget extends StatelessWidget {
// //   const MyStatelessWidget({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ListView(
// //       padding: const EdgeInsets.all(8.0),
// //       itemExtent: 106.0,
// //       children: <CustomListItem>[
// //         CustomListItem(
// //           user: 'Flutter',
// //           viewCount: 999000,
// //           thumbnail: Container(
// //             decoration: const BoxDecoration(color: Colors.blue),
// //           ),
// //           title: 'The Flutter YouTube Channel',
// //         ),
// //         CustomListItem(
// //           user: 'Dash',
// //           viewCount: 884000,
// //           thumbnail: Container(
// //             decoration: const BoxDecoration(color: Colors.yellow),
// //           ),
// //           title: 'Announcing Flutter 1.0',
// //         ),
// //       ],
// //     );
// //   }
// // }
// import 'dart:convert';
// import 'dart:io';
// import 'package:ecommerce/common/widget/snackbar_widget.dart';
// import 'package:ecommerce/model/login_model.dart';
// import 'package:ecommerce/screen/home_page/home_page.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:ecommerce/common/app/shred_preference.dart';
// import 'package:ecommerce/common/widget/common_navigator.dart';
// import 'package:ecommerce/rest_api/rest_services.dart';
// import 'package:ecommerce/screen/login_page/login_page.dart';
// import 'package:flutter/material.dart';
//
// class LoginPageViewModel {
//   final LoginPageState loginPageState;
//
//   LoginPageViewModel(this.loginPageState);
//
//   ShredPreference shredPreference = ShredPreference();
//
//   Future<void> loginUPMethod(
//       BuildContext context,
//       TextEditingController email,
//       TextEditingController password,
//       bool status,
//       ) async {
//     try {
//       loginPageState.setState(() {
//         status = true;
//       });
//       Map<String, dynamic> loginMap = {
//         'devicetoken': await FirebaseMessaging.instance.getToken(),
//         'devicetype': "2",
//         'email': email.text.trim(),
//         'password': password.text.trim(),
//         'userName': "",
//         'facebookProfileUrl': "",
//         "mobileVersion": Platform.isAndroid ? 'Android' : 'IOS',
//         "osVersion": "10.11"
//       };
//       print('LoginMap --> $loginMap');
//       String? loginUserResponse = await RestServices.postRestMethods(
//           endpoints: RestServices.loginApi, bodyParam: loginMap);
//       if (loginUserResponse != null && loginUserResponse.isNotEmpty) {
//         Map<String, dynamic> loginUserResponseMap =
//         jsonDecode(loginUserResponse);
//         if (loginUserResponseMap.containsKey('Success') &&
//             loginUserResponseMap['Success']) {
//           LoginModel loginModel = loginModelFromJson(loginUserResponse);
//           print('Loginmmodel --> ${loginModel.toJson()}');
//
//           await shredPreference.setPrefStringValue(
//               shredPreference.store, "${loginUserResponseMap['access_token']}");
//
//           appSnackBar(context, text: "${loginUserResponseMap['Message']}");
//           Navigator.pushAndRemoveUntil(
//             context,
//             CommonNavigator(child: HomePage()),
//                 (route) => false,
//           );
//         } else {
//           loginPageState.status = false;
//           loginPageState.setState(() {
//             appSnackBar(context, text: "${loginUserResponseMap['Message']}");
//           });
//         }
//       }
//     } on SocketException catch (e) {
//       log("Catch socket in loginUPMethod --> ${e.message}");
//       log(e.message);
//       loginPageState.setState(() {
//         status = false;
//       });
//     }
//   }
// }
// //loginpage
//
// import 'package:flutter/services.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => LoginPageState();
// }
//
// class LoginPageState extends State<LoginPage> {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   LoginPageViewModel? loginPageViewModel;
//   bool status = false;
//   final formGlobalKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     loginPageViewModel ?? (loginPageViewModel = LoginPageViewModel(this));
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: ColorResource.green,
//         statusBarIconBrightness: Brightness.light,
//       ),
//     );
//     return Scaffold(
//       //backgroundColor: ColorResource.green,
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Container(
//                 height: 170,
//                 width: double.infinity,
//                 color: ColorResource.green,
//                 child: Column(children: [
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   Center(
//                     child: SizedBox(
//                         height: 56,
//                         width: 90,
//                         child: Image.asset(
//                           ImageResources.looklogo,
//                         )),
//                   ),
//                   Text(
//                     StringResources.loginname,
//                     style: GoogleFonts.poppins(
//                         textStyle: const TextStyle(
//                             fontSize: 26,
//                             fontWeight: FontWeight.w500,
//                             color: ColorResource.white)),
//                   ),
//                 ]),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 140),
//                 child: Container(
//                   height: double.infinity,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                       color: ColorResource.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       )),
//                   child: Stack(
//                     children: [
//                       Form(key: formGlobalKey,
//                         child: ListView(
//                           children: [
//                             Center(
//                               child: Text(StringResources.logintitlename,
//                                   style: GoogleFonts.poppins(
//                                       textStyle: const TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.w500,
//                                       ))),
//                             ),
//                             Center(
//                               child: Text(StringResources.logintitlesecondname,
//                                   style: GoogleFonts.poppins(
//                                       textStyle: const TextStyle(
//                                         fontSize: 14,
//                                         color: ColorResource.grey,
//                                         fontWeight: FontWeight.w400,
//                                       ))),
//                             ),
//                             sizeMaring(),
//                             emailTextFiled(email),
//                             sizeMaring(),
//                             passwordTextfFlied(password),
//                             sizeMaring(),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 180),
//                               child: TextButton(
//                                   onPressed: () {
//                                     Navigator.push(context, MaterialPageRoute(
//                                       builder: (context) {
//                                         return const Forgotpassword();
//                                       },
//                                     ));
//                                   },
//                                   child: Text(
//                                     StringResources.forgotpassword,
//                                     style: GoogleFonts.poppins(
//                                         textStyle: const TextStyle(
//                                           fontSize: 13,
//                                           color: ColorResource.black,
//                                           fontWeight: FontWeight.w400,
//                                         )),
//                                   )),
//                             ),
//                             CommonElevatedButton(
//                               onPressed: () async {
//                                 submit();
//                                 log("========dkff");
//                               },
//                               buttonColor: ColorResource.green,
//                               text: StringResources.loginname,
//                               textColor: ColorResource.white,
//                             ),
//                             sizeMaring(),
//                             Padding(
//                                 padding: const EdgeInsets.only(left: 30, right: 30),
//                                 child: divderrow()),
//                             sizeMaring(),
//                             AppButton(
//                               buttonColor: ColorResource.blue,
//                               buttonIcon: ImageResources.fackbookicon,
//                               text: StringResources.Facebookname,
//                             ),
//                             sizeMaring(),
//                             AppButton(
//                               buttonColor: ColorResource.black,
//                               buttonIcon: ImageResources.appleicon,
//                               text: StringResources.applename,
//                             ),
//                             sizeMaring(),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 70),
//                               child: Row(
//                                 children: [
//                                   privacyText(
//                                       context, """Didn’t have an account?"""),
//                                   TextButton(
//                                       onPressed: () {
//                                         Navigator.pushReplacement(context,
//                                             MaterialPageRoute(
//                                               builder: (context) {
//                                                 return const RegisterPage();
//                                               },
//                                             ));
//                                       },
//                                       child: Text(
//                                         StringResources.registerpage,
//                                         style: GoogleFonts.poppins(
//                                             textStyle: const TextStyle(
//                                               fontSize: 13,
//                                               color: ColorResource.black,
//                                               fontWeight: FontWeight.w400,
//                                             )),
//                                       ))
//                                 ],
//                               ),
//                             ),
//                             sizeMaring(),
//                           ],
//                         ),
//                       ),
//                       status == false
//                           ? const SizedBox()
//                           : Center(
//                         child: Container(
//                           height: double.infinity,
//                           width: double.infinity,
//                           decoration: const BoxDecoration(
//                               color: Colors.black26,
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(30),
//                                 topRight: Radius.circular(30),
//                               )),
//                           child: const Center(
//                               child: SizedBox(
//                                   height: 40,
//                                   width: 40,
//                                   child: CircularProgressIndicator())),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
//
//   submit() async {
//     final isValid = formGlobalKey.currentState?.validate();
//     if (isValid!) {
//       if (isValid == true) {
//         await loginPageViewModel!.loginUPMethod(
//             context, email, password, status = true);
//       } else {
//         const Text("");
//       }
//     }
//     formGlobalKey.currentState?.save();
//   }
// }
//

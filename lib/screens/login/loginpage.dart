
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/app_button.dart';
import 'package:uidesign/constant/widget/divider.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/screens/Registerpage/registerpage.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/login/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  LoginPageViewModel? loginPageViewModel;
  bool status = false;
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    loginPageViewModel ?? (loginPageViewModel = LoginPageViewModel(this));
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Fixcolors.green,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Scaffold(
      //backgroundColor: ColorResource.green,
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                color: Fixcolors.green,
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: SizedBox(
                        height: 56,
                        width: 90,
                        child: Image.asset(
                          Images.registerlogo,
                        )),
                  ),
                  Text(
                    Stringtext.login,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.white)),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 140),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Fixcolors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Stack(
                    children: [
                      Form(key: formGlobalKey,
                        child: ListView(
                          children: [
                            Center(
                              child: Text(Stringtext.splashTitle,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ))),
                            ),
                            Center(
                              child: Text(Stringtext.logintitlesecondname,
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Fixcolors.grey,
                                        fontWeight: FontWeight.w400,
                                      ))),
                            ),
                            sizebox(),
                            emailt(email),
                            sizebox(),
                            passwordt(password),
                            sizebox(),
                            Padding(
                              padding: const EdgeInsets.only(left: 180),
                              child: TextButton(
                                onPressed: () => Container(),
                                  child: Text(
                                    Stringtext.forgotpassword,
                                    style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 13,
                                          color: Fixcolors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  )),
                            ),
                            ElevateButton(
                              onPressed: () async {
                                submit();
                              },
                              buttonColor: Fixcolors.green,
                              text: Stringtext.login,
                              textColor: Fixcolors.white,
                            ),
                            sizebox(),
                            Padding(
                                padding: const EdgeInsets.only(left: 30, right: 30),
                                child: divideror()),
                            sizebox(),
                            facebookButton(
                              buttonColor: Fixcolors.blue,
                              buttonIcon: Images.facebook,
                              text: Stringtext.facebooklogin,
                            ),
                            sizebox(),
                            Applebutton(
                              buttonColor: Fixcolors.black,
                              buttonIcon: Images.appleimage,
                              text: Stringtext.applelogin,
                            ),
                            SizedBox(),
                            Padding(
                              padding: const EdgeInsets.only(left: 70),
                              child: Row(
                                children: [
                                  privacyText(
                                      context, """Didn’t have an account?"""),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return const RegisterPage();
                                              },
                                            ));
                                      },
                                      child: Text(
                                        Stringtext.Register,
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              fontSize: 13,
                                              color: Fixcolors.black,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ))
                                ],
                              ),
                            ),
                            sizebox(),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  submit() async {
    final isValid = formGlobalKey.currentState?.validate();
    if (isValid!) {
      if (isValid == true) {
        await loginPageViewModel!.loginUPMethod(
            context, email, password, status = true);
      } else {
        const Text("error");
      }
    }
    formGlobalKey.currentState?.save();
  }
}
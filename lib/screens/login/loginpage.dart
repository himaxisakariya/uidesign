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
import 'package:uidesign/screens/homepage/home_page.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(
        children: [
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
              Stringvalue.login,
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
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      "Hey, It's good to see you again!",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )),
                    )),
                    const SizedBox(
                      height: 3,
                    ),
                    const Center(
                      child: Text(
                        "Login to get going",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    sizebox(),
                    sizebox(),
                    email(),
                    sizebox(),
                    password(),
                    sizebox(),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 13)),
                      ),
                    ),
                    sizebox(),
                    ElevateButton(
                      onPressed: () {
                        if (_form.currentState!.validate()) {
                          //
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                      buttonColor: Fixcolors.green,
                      text: Stringvalue.login,
                      textColor: Fixcolors.white,
                    ),
                    sizebox(),
                    divideror(),
                    sizebox(),
                    facebookAppButton(
                      buttonColor: Fixcolors.blue,
                      text: Stringvalue.facebooklogin,
                      buttonIcon: Images.facebook,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Applebutton(
                      buttonIcon: Images.appleimage,
                      text: Stringvalue.applelogin,
                      buttonColor: Fixcolors.black,
                    ),
                const SizedBox(height: 1,),
                     Row(
                       children: [
                         Container(margin: const EdgeInsets.fromLTRB(70, 0, 0,5),child: const Text("Didn't have an account ?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Fixcolors.grey),)),
                         Container(
                           margin: const EdgeInsets.fromLTRB(0, 0, 0,5),
                           child: TextButton(onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return const RegisterPage();
                                    },));
                           }, child: const Text("Register",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: Colors.black))),
                         )
                       ],
                     ),

                    sizebox(),
                  ],
                )),
          ))
        ],
      ),
    );
  }
}

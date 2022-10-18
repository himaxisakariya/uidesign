import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/constant/widget/textfield.dart';

Widget divider() {
  return Row(
    children: const [
      SizedBox(
        width: 145,
        child: Divider(
          color: Fixcolors.grey,
        ),
      ),
      Text(
        "or",
        style: TextStyle(color: Fixcolors.grey),
      ),
      SizedBox(
        width: 139,
        child: Divider(
          color: Fixcolors.grey,
        ),
      ),
    ],
  );
}

// Widget name() {
//   TextEditingController namecontroller = TextEditingController();
//   return TextFields(
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'Enter Name';
//       }
//       return null;
//     },
//     textEditingController:namecontroller,
//     readonly: false,filed: false,
//     prefixIcon: Container(
//       height: 25,
//       width: 20,
//       decoration: BoxDecoration(
//         color: Fixcolors.green.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       margin: const EdgeInsets.all(7),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.person,
//         ),
//       ),
//     ),
//     hintText: "Your Name",
//     hintstyle: GoogleFonts.poppins(
//         textStyle: const TextStyle(
//       fontWeight: FontWeight.w400,
//       fontSize: 13,
//     )),
//   );
// }

// Widget email() {
//   TextEditingController emailcontroller = TextEditingController();
//   return TextFields(
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'Enter email-ID';
//       }
//       return null;
//     },
//     readonly: false,
//     textEditingController: emailcontroller,
//     prefixIcon: Container(
//       height: 25,
//       width: 20,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//           color: Fixcolors.green.withOpacity(0.1)),
//       margin: const EdgeInsets.all(7),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(Images.email),
//       ),
//     ),
//     hintText: Stringvalue.emailaddress,
//     hintstyle: GoogleFonts.poppins(
//         textStyle: const TextStyle(
//       fontWeight: FontWeight.w400,
//       fontSize: 13,
//     )),filed: false,
//   );
// }

Widget phonenumber() {
  TextEditingController phonecontroller = TextEditingController();
  return TextFields(
    textEditingController: phonecontroller,
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter phone number';
      }
      return null;
    },
    prefixIcon: Container(
      height: 25,
      width: 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Fixcolors.green.withOpacity(0.1)),
      margin: const EdgeInsets.all(7),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(Images.call),
      ),
    ),
    textInputType: TextInputType.phone,
    hintText: Stringvalue.phonenumber,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
    )), readonly: false,filed: false,
  );
}

Widget confirmpassword() {
  return TextFields(
    validator: (value) {
      if (value!.isEmpty) {
        return 'Enter confirm password';
      }
      return null;
    },
    readonly: false,
    prefixIcon: Container(
      height: 25,
      width: 20,
      decoration: BoxDecoration(
        color: Fixcolors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.all(7),
      child: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          Images.lock,
        ),
      ),
    ),
    hintText: Stringvalue.cpassword,
    hintstyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
    )),filed: false,
  );
}

// Widget password() {
//   TextEditingController passwordcontroller = TextEditingController();
//   return TextFields(
//     validator: (value) {
//       if (value!.isEmpty) {
//         return 'Enter password';
//       }
//       return null;
//     },
//     textEditingController: passwordcontroller,
//     readonly: false,
//     prefixIcon: Container(
//       height: 25,
//       width: 20,
//       decoration: BoxDecoration(
//         color: Fixcolors.green.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       margin: const EdgeInsets.all(7),
//       child: Padding(
//         padding: const EdgeInsets.all(7),
//         child: Image.asset(
//           Images.lock,
//         ),
//       ),
//     ),
//     hintText: Stringvalue.password,
//     hintstyle: GoogleFonts.poppins(
//         textStyle: const TextStyle(
//       fontWeight: FontWeight.w400,
//       fontSize: 13,
//     )), filed: false,
//   );
// }

Widget sizebox() {
  return const SizedBox(
    height: 13,
  );
}

Widget privacyText(BuildContext context, String name, TextButton textButton) {
  return Text(
    name,
    style: GoogleFonts.poppins(
        textStyle: const TextStyle(
      fontSize: 13,
      color: Fixcolors.grey,
      fontWeight: FontWeight.w500,
    )),
  );
}

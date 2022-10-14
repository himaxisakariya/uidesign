import 'package:flutter/material.dart';
import 'package:uidesign/constant/Fixcolors.dart';

Widget divideror() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          width: 88,
          child: Divider(
            color: Fixcolors.grey,
          ),
        ),
        SizedBox(width: 10,),
        Text(
          "Or",
          style: TextStyle(color: Fixcolors.grey,fontSize: 16,fontWeight: FontWeight.w400),
        ),
        SizedBox(width: 10,),
        SizedBox(
          width: 88,
          child: Divider(
            color: Fixcolors.grey,
          ),
        ),
      ],
    ),
  );
}
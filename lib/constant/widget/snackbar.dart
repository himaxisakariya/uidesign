import 'package:flutter/material.dart';

snackbar(BuildContext context, {String? text}) async {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      '$text',
      style: const TextStyle(color: Colors.black),

    ),
    backgroundColor: const Color(0xffE5E4E2),
    behavior: SnackBarBehavior.floating,
  ));
}

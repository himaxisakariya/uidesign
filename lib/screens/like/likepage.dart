import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';

class Likepage extends StatefulWidget {
  const Likepage({Key? key}) : super(key: key);

  @override
  State<Likepage> createState() => _LikepageState();
}

class _LikepageState extends State<Likepage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: AppBar(title: const Text("Likepage"),backgroundColor: Fixcolors.green,),
      body: const Center(child: Text("Like Page")),
    );
  }
}

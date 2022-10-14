import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uidesign/constant/Fixcolors.dart';

class Messagepage extends StatefulWidget {
  const Messagepage({Key? key}) : super(key: key);

  @override
  State<Messagepage> createState() => _MessagepageState();
}

class _MessagepageState extends State<Messagepage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Fixcolors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      appBar: AppBar(title: const Text("Message"),backgroundColor: Fixcolors.green,),
      body: const Center(child: Text("Message"),),
    );
  }
}

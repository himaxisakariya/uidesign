import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/Registerpage/widgets.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  final ImagePicker _picker = ImagePicker();
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
                height: 30,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Fixcolors.white,
                        )),
                    const SizedBox(
                      width: 115,
                    ),
                    const textlist(
                      text: Stringvalue.inbox,
                      color: Fixcolors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 20,
                        child: Image.asset(
                          Images.menu,
                        )),
                  ],
                )),
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
            child: ListView(
              children: [
                Container(
                  height: 120,
                  width: 100,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(Images.pr1), fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Center(
                  child: textlist(
                    text: Stringvalue.person1,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const Center(
                  child: Text(
                    "Active Now",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Fixcolors.grey),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Divider(thickness: 1,),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(Images.pr1), fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: const textlist(
                        text: Stringvalue.chat,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Fixcolors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Container(
                  height: 50,
                  width: 250,
                  margin: const EdgeInsets.only(left: 80,right: 20),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: const Center(
                    child: textlist(
                      text: Stringvalue.chat,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Fixcolors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(Images.pr1), fit: BoxFit.fill),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: const textlist(
                        text: Stringvalue.chat,
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: Fixcolors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),
                Container(
                  height: 50,
                  width: 250,
                  margin: const EdgeInsets.only(left: 80,right: 20),
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: const Center(
                    child: textlist(
                      text: Stringvalue.chat,
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: Fixcolors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration:
                      BoxDecoration(
                        border: Border.all(color: Colors.black,style: BorderStyle.solid,width: 1.0),
                          color: Colors.transparent,
                          //borderRadius: BorderRadius.circular(30),
                          ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            color: Colors.white,
                            child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                      });
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: const Text("Image"),
                                            content: const Text("Select Image"),
                                            actions: [
                                              IconButton(
                                                  onPressed: () async {
                                                    Navigator.pop(context);
                                                    await _picker.pickImage(
                                                        source:
                                                        ImageSource.camera);
                                                  },
                                                  icon: const Icon(Icons.camera_alt)),
                                              IconButton(
                                                  onPressed: () async {
                                                    Navigator.pop(context);
                                                    await _picker.pickImage(
                                                        source:
                                                        ImageSource.gallery,);
                                                  },
                                                  icon: const Icon(Icons
                                                      .photo_size_select_actual_outlined))
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.image_rounded,color: Fixcolors.green,))),
                          ),
                          const Flexible(
                            child: TextField(
                              textInputAction: TextInputAction.send,
                              keyboardType: TextInputType.multiline,
                              style:
                              TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                              decoration: InputDecoration(
                                  hintText: "Type message here..",
                                  hintStyle: TextStyle(color: Colors.blueGrey)),
                            ),
                          ),
                          Material(
                            color: Colors.white,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: IconButton(
                                icon: const Icon(Icons.send,color: Fixcolors.green,),
                                onPressed: () {
                                },
                                color: Colors.blueGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ))
        ],
      ),
    );
  }
}

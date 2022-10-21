import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/Image.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/constant/widget/ebutton.dart';
import 'package:uidesign/screens/drawerpage/incresedisk.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/Ad_Details/ad_details.dart';
import 'package:uidesign/screens/postAd/post_ad_widget.dart';
import 'package:video_player/video_player.dart';

class Post_ads extends StatefulWidget {
  const Post_ads({Key? key}) : super(key: key);

  @override
  State<Post_ads> createState() => Post_adsState();
}

class Post_adsState extends State<Post_ads> {
  PostAdsViewModel? postAddPageViewModel;
  List<XFile> imgpath = [];
  List<XFile> videopaths = [];
  bool s = true;
  String videopath = "";
  ImagePicker picker = ImagePicker();
  late VideoPlayerController controller;
  String thumbnail = '';
  @override
  Widget build(BuildContext context) {
    postAddPageViewModel ?? (postAddPageViewModel = PostAdsViewModel(this));
    return Scaffold(
      backgroundColor: Fixcolors.green,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
              height: 30,
              child: Row(
                children: [
                  IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Fixcolors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  const SizedBox(
                    width: 80,
                  ),
                  const textlist(
                    text: Stringtext.postad,
                    color: Fixcolors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )
                ],
              )),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
                color: Fixcolors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: ListView(children: [
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                elevation: 3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Card(
                        child: ListTile(
                          leading: const textlist(
                            text: Stringtext.media,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Fixcolors.black,
                          ),
                          trailing: PopupMenuButton(
                            color: Fixcolors.green,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5))),
                            position: PopupMenuPosition.under,
                            offset: const Offset(-3, 8),
                            child: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(LookPriorImage.i),
                            ),
                            onSelected: (value) {},
                            itemBuilder: (BuildContext bc) {
                              return const [
                                PopupMenuItem(
                                  value: 1,
                                  child: SizedBox(
                                      height: 33,
                                      child: textlist(
                                        text: Stringtext.popup,
                                        fontSize: 12,
                                        color: Fixcolors.white,
                                        fontWeight: FontWeight.w400,
                                      )),
                                ),
                              ];
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: textlist(
                          text: Stringtext.media1,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: textlist(
                          text: Stringtext.media2,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            postAddPageViewModel!.videooption(context);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 109,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: imgpath.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                          alignment: Alignment.topRight,
                                          height: 109,
                                          width: 100,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 3),
                                          child:
                                          Image.file(File(thumbnail)),
                                      );
                                    },
                                  ),
                                ),

                                // SizedBox(
                                //   height: 95,
                                //   width: 100,
                                //   child: Image.file(File(thumbnail)),
                                // ),
                                DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(6),
                                  color: Fixcolors.green,
                                  child: Container(
                                    color:
                                        Fixcolors.greenacccet.withOpacity(0.1),
                                    child: SizedBox(
                                      height: 100,
                                      width: 105,
                                      child: Stack(children: [
                                        Container(
                                          margin: const EdgeInsets.all(6),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30,
                                                top: 20,
                                                right: 30,
                                                bottom: 7),
                                            child: Image.asset(LookPriorImage.video),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 65),
                                          child: textlist(
                                            text: Stringtext.addvideo,
                                            color: Fixcolors.green,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 25,
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                elevation: 3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: textlist(
                          text: Stringtext.media3,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.black,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        child: textlist(
                          text: Stringtext.media4,
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: Fixcolors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          setState(() {
                            postAddPageViewModel!.imageoption(context);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 109,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemCount: imgpath.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                          alignment: Alignment.topRight,
                                          height: 109,
                                          width: 100,
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 3),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(5)),
                                              image: DecorationImage(
                                                  image: FileImage(File(
                                                      imgpath[index].path)),
                                                  fit: BoxFit.fill)),
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  imgpath.removeAt(index);
                                                });
                                              },
                                              icon:
                                                  Image.asset(LookPriorImage.delete)));
                                    },
                                  ),
                                ),
                                DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(6),
                                  color: Fixcolors.green,
                                  child: Container(
                                    color:
                                        Fixcolors.greenacccet.withOpacity(0.1),
                                    child: SizedBox(
                                      height: 100,
                                      width: 105,
                                      child: Stack(children: [
                                        Container(
                                          margin: const EdgeInsets.all(6),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30,
                                                top: 20,
                                                right: 30,
                                                bottom: 7),
                                            child: Image.asset(LookPriorImage.gallery),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 65),
                                          child: textlist(
                                            text: Stringtext.addimage,
                                            color: Fixcolors.green,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ]),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: textlist(
                  text: Stringtext.media5,
                  color: Fixcolors.black,
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const DISK_SPACE();
                    },
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const textlist(
                      text: Stringtext.media6,
                      fontSize: 13,
                      color: Fixcolors.green,
                      fontWeight: FontWeight.w500,
                    ),
                    Image.asset(
                      LookPriorImage.postarrow,
                      height: 10,
                      width: 10,
                    ),
                  ],
                ),
              ),
              ElevateButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const ad_details();
                    },
                  ));
                },
                buttonColor: Fixcolors.green,
                textSize: 16,
                text: Stringtext.next,
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

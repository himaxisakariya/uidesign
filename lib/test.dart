// import 'dart:io';
//
// import 'package:ecommerce/common/constant/color_res.dart';
// import 'package:ecommerce/common/constant/image_res.dart';
// import 'package:ecommerce/common/constant/string_res.dart';
// import 'package:ecommerce/common/widget/common_text.dart';
// import 'package:ecommerce/common/widget/elevated_button.dart';
// import 'package:ecommerce/screen/post_add_page/widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';
//
// class PostAddPage extends StatefulWidget {
//   const PostAddPage({Key? key}) : super(key: key);
//
//   @override
//   State<PostAddPage> createState() => PostAddPageState();
// }
//
// class PostAddPageState extends State<PostAddPage> {
//   PostAddPageViewModel? postAddPageViewModel;
//   List<XFile> imgpath = [];
//   String videopath = "";
//   late VideoPlayerController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     pickVideoo();
//   }
//
//   pickVideoo() {
//     controller = VideoPlayerController.file(File(videopath))
//       ..initialize().then((_) {
//         setState(() {
//           controller.play();
//         });
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     postAddPageViewModel ?? (postAddPageViewModel = PostAddPageViewModel(this));
//     return Scaffold(
//       backgroundColor: ColorResource.green,
//       body: Column(children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 30),
//           child: SizedBox(
//               height: 30,
//               child: Row(
//                 children: [
//                   IconButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                       icon: const Icon(
//                         Icons.arrow_back_ios_new,
//                         color: ColorResource.white,
//                       )),
//                   const SizedBox(
//                     width: 50,
//                   ),
//                   const CommonText(
//                     text: StringResources.notifications,
//                     color: ColorResource.white,
//                     fontWeight: FontWeight.w500,
//                     fontSize: 20,
//                   )
//                 ],
//               )),
//         ),
//         Expanded(
//           child: Container(
//             decoration: const BoxDecoration(
//                 color: ColorResource.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 )),
//             child: ListView(children: [
//               Card(
//                 margin: const EdgeInsets.symmetric(horizontal: 5),
//                 elevation: 3,
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         leading: const CommonText(
//                           text: StringResources.Media,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: ColorResource.black,
//                         ),
//                         trailing:
//                         SvgPicture.asset(ImageResources.infomationicon),
//                       ),
//                       const Divider(),
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15),
//                         child: CommonText(
//                           text: StringResources.videotext1,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           color: ColorResource.black,
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15),
//                         child: CommonText(
//                           text: StringResources.videorext2,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w400,
//                           color: ColorResource.grey,
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () async {
//                           postAddPageViewModel!.showModelButtomsSheetVideo(
//                             context,
//                           );
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 5),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 15),
//                             child: SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 children: [
//                                   controller.value.isInitialized
//                                       ? SizedBox(
//                                     height: 100,
//                                     width: 150,
//                                     child: Stack(children: [
//                                       AspectRatio(
//                                         aspectRatio:
//                                         controller.value.aspectRatio,
//                                         child: VideoPlayer(controller),
//                                       ),
//                                       IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               //controller.value.isPlaying;
//                                               //    pickVideoo();
//                                             });
//                                           },
//                                           icon: Icon(
//                                             controller.value.isPlaying
//                                                 ? Icons.pause
//                                                 : Icons.play_arrow,
//                                             color: ColorResource.white,
//                                           ))
//                                     ]),
//                                   )
//                                       : const SizedBox(
//                                     height: 50,
//                                     width: 50,
//                                   ),
//                                   ElevatedButton(
//                                       onPressed: () {
//                                         pickVideoo();
//                                       },
//                                       child: const Text("view")),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 15),
//                                     child: SizedBox(
//                                       height: 109,
//                                       width: 113,
//                                       child: Stack(children: [
//                                         SvgPicture.asset(
//                                             ImageResources.videoicon),
//                                         const Padding(
//                                           padding: EdgeInsets.only(
//                                               left: 19, top: 62),
//                                           child: CommonText(
//                                             text: StringResources.AddVideos,
//                                             color: ColorResource.green,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                         ),
//                                       ]),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                     ]),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Card(
//                 margin: const EdgeInsets.symmetric(horizontal: 5),
//                 elevation: 3,
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15),
//                         child: CommonText(
//                           text: StringResources.imagetext1,
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           color: ColorResource.black,
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 15),
//                         child: CommonText(
//                           text: StringResources.imagetext2,
//                           fontSize: 11,
//                           fontWeight: FontWeight.w400,
//                           color: ColorResource.grey,
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () async {
//                           setState(() {
//                             postAddPageViewModel!
//                                 .showModelButtomsSheetPhoto(context);
//                           });
//                           postAddPageViewModel!.requestCameraPermission();
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 15),
//                           child: SingleChildScrollView(
//                             scrollDirection: Axis.horizontal,
//                             child: Row(
//                               children: [
//                                 SizedBox(
//                                   height: 109,
//                                   child: ListView.builder(
//                                     shrinkWrap: true,
//                                     physics:
//                                     const NeverScrollableScrollPhysics(),
//                                     scrollDirection: Axis.horizontal,
//                                     itemCount: imgpath.length,
//                                     itemBuilder: (context, index) {
//                                       return Container(
//                                           alignment: Alignment.topRight,
//                                           height: 109,
//                                           width: 100,
//                                           margin: const EdgeInsets.symmetric(
//                                               horizontal: 3),
//                                           decoration: BoxDecoration(
//                                               borderRadius:
//                                               const BorderRadius.all(
//                                                   Radius.circular(5)),
//                                               image: DecorationImage(
//                                                   image: FileImage(File(
//                                                       imgpath[index].path)),
//                                                   fit: BoxFit.fill)),
//                                           child: IconButton(
//                                               onPressed: () {
//                                                 setState(() {
//                                                   imgpath.removeAt(index);
//                                                 });
//                                               },
//                                               icon: SvgPicture.asset(
//                                                   ImageResources.removeicon)));
//                                     },
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 109,
//                                   width: 113,
//                                   child: Stack(children: [
//                                     SvgPicture.asset(ImageResources.imageicon),
//                                     const Padding(
//                                       padding:
//                                       EdgeInsets.only(left: 19, top: 62),
//                                       child: CommonText(
//                                         text: StringResources.AddPhotos,
//                                         color: ColorResource.green,
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ]),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                     ]),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 15),
//                 child: CommonText(
//                   text: StringResources.posttext,
//                   color: ColorResource.black,
//                   fontSize: 11,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextButton(
//                 onPressed: () {},
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const CommonText(
//                       text: StringResources.Gotomyoptions,
//                       fontSize: 13,
//                       color: ColorResource.green,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     SvgPicture.asset(
//                       ImageResources.ArrowRight,
//                       height: 9,
//                       width: 8,
//                     ),
//                   ],
//                 ),
//               ),
//               CommonElevatedButton(
//                 onPressed: () {
//                   setState(() {});
//                 },
//                 buttonColor: ColorResource.green,
//                 textSize: 16,
//                 text: StringResources.Next,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//             ]),
//           ),
//         ),
//       ]),
//     );
//   }
// }
//
//
//
// //widget
// import 'package:ecommerce/common/constant/color_res.dart';
// import 'package:ecommerce/common/constant/string_res.dart';
// import 'package:ecommerce/common/widget/common_text.dart';
// import 'package:ecommerce/screen/post_add_page/post_add_page.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// class PostAddPageViewModel {
//   final PostAddPageState postAddPageState;
//
//   PostAddPageViewModel(this.postAddPageState);
//
//   showModelButtomsSheetVideo(BuildContext context) {
//     return showModalBottomSheet(
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25.0),
//             topRight: Radius.circular(25.0),
//           )),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10),
//               child: SizedBox(
//                 height: 129,
//                 child: Column(
//                   children: [
//                     InkWell(
//                       onTap: () async {
//                         videoMethod(ImageSource.camera);
//                       },
//                       child: const CommonText(
//                         text: StringResources.RecordVideo,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: ColorResource.black,
//                       ),
//                     ),
//                     const Divider(),
//                     InkWell(
//                       onTap: () async {
//                         videoMethod(ImageSource.gallery);
//                       },
//                       child: const CommonText(
//                         text: StringResources.Choosefromlibrary,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: ColorResource.black,
//                       ),
//                     ),
//                     const Divider(),
//                     const CommonText(
//                       text: StringResources.Cancel,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: ColorResource.red,
//                     ),
//                     const Divider(),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   showModelButtomsSheetPhoto(BuildContext context) {
//     return showModalBottomSheet(
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(25.0),
//             topRight: Radius.circular(25.0),
//           )),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return SizedBox(
//               height: 149,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Column(
//                   children: [
//                     InkWell(
//                       onTap: () async {
//                         imgMethod(ImageSource.camera);
//                       },
//                       child: const CommonText(
//                         text: StringResources.TakePhoto,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: ColorResource.black,
//                       ),
//                     ),
//                     const Divider(),
//                     InkWell(
//                       onTap: () async {
//                         multiImgMethod(ImageSource.gallery);
//                       },
//                       child: const CommonText(
//                         text: StringResources.Choosefromlibrary,
//                         fontSize: 18,
//                         fontWeight: FontWeight.w400,
//                         color: ColorResource.black,
//                       ),
//                     ),
//                     const Divider(),
//                     const CommonText(
//                       text: StringResources.Cancel,
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: ColorResource.red,
//                     ),
//                     const Divider(),
//                   ],
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
//
//   Future<void> requestCameraPermission() async {
//     //final serviceStatus = await Permission.camera.isGranted;
//
//     // bool isCameraOn = serviceStatus == ServiceStatus.enabled;
//
//     final status = await Permission.camera.request();
//
//     if (status == PermissionStatus.granted) {
//       if (kDebugMode) {
//         print('Permission Granted');
//       }
//     } else if (status == PermissionStatus.denied) {
//       if (kDebugMode) {
//         print('Permission denied');
//       }
//     } else if (status == PermissionStatus.permanentlyDenied) {
//       if (kDebugMode) {
//         print('Permission Permanently Denied');
//       }
//       await openAppSettings();
//     }
//   }
//
//   imgMethod(ImageSource imageSource) async {
//     try {
//       XFile? image = await ImagePicker().pickImage(source: imageSource);
//       if (image == null) return;
//       postAddPageState.imgpath.add(image);
//       postAddPageState.setState(() {});
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print('Failed to pick image: $e');
//       }
//     }
//   }
//
//   multiImgMethod(ImageSource imageSource) async {
//     try {
//       List<XFile> image = await ImagePicker().pickMultiImage();
//       if (image == null) return;
//       postAddPageState.imgpath.addAll(image);
//       postAddPageState.setState(() {});
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print('Failed to pick image: $e');
//       }
//     }
//   }
//
//   videoMethod(ImageSource imageSource) async {
//     try {
//       XFile? video = await ImagePicker().pickVideo(
//           source: imageSource, maxDuration: const Duration(seconds: 10));
//       if (video == null) return;
//       postAddPageState.videopath = video.path;
//       postAddPageState.setState(() {});
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print('Failed to pick image: $e');
//       }
//     }
//   }
// }
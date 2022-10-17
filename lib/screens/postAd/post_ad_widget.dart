import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uidesign/constant/Fixcolors.dart';
import 'package:uidesign/constant/String.dart';
import 'package:uidesign/screens/homepage/homepagewidgets.dart';
import 'package:uidesign/screens/postAd/post_ads.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class PostAdsViewModel {
  final Post_adsState postAddPageState;

  PostAdsViewModel(this.postAddPageState);

  imageoption(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      )),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return SizedBox(
              height: 149,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        image(ImageSource.camera);
                        Navigator.pop(context);
                      },
                      child: const textlist(
                        text: Stringvalue.imagetake,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Fixcolors.black,
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      onTap: () async {
                        multiimage(ImageSource.gallery);
                        Navigator.pop(context);
                      },
                      child: const textlist(
                        text: Stringvalue.imagefile,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      child: const textlist(
                        text: Stringvalue.cancel,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  image(ImageSource imageSource) async {
    try {
      XFile? image = await ImagePicker().pickImage(source: imageSource);
      if (image == null) return;
      postAddPageState.imgpath.add(image);
      postAddPageState.setState(() {});
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  multiimage(ImageSource imageSource) async {
    try {
      List<XFile> image = await ImagePicker().pickMultiImage();
      postAddPageState.imgpath.addAll(image);
      postAddPageState.setState(() {});
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  videooption(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25.0),
        topRight: Radius.circular(25.0),
      )),
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 129,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        videoMethod(ImageSource.camera);
                        Navigator.pop(context);
                      },
                      child: const textlist(
                        text: Stringvalue.video,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Fixcolors.black,
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      onTap: () async {
                        videoMethod(ImageSource.gallery);
                        Navigator.pop(context);
                      },
                      child: const textlist(
                        text: Stringvalue.imagefile,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Fixcolors.black,
                      ),
                    ),
                    const Divider(),
                    InkWell(
                      child: const textlist(
                        text: Stringvalue.cancel,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  videoMethod(ImageSource imageSource) async {
    try {
      XFile? video = await ImagePicker().pickVideo(
          source: imageSource, maxDuration: const Duration(seconds: 10));
      if (video == null) return;
      postAddPageState.videopath = video.path;

      postAddPageState.thumbnail = await getImage(postAddPageState.videopath);
      //postAddPageState.thumbnailpath.addAll(video.path);
      postAddPageState.setState(() {});

      print("fgvtgbtbhyhnyhnm->${postAddPageState.thumbnail}");
      postAddPageState.setState(() {});
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print('Failed to pick image: $e');
      }
    }
  }

  getImage(videoPathUrl) async {
    return await VideoThumbnail.thumbnailFile(
      video: videoPathUrl,
      thumbnailPath: (await getTemporaryDirectory()).path,
      imageFormat: ImageFormat.PNG,
      quality: 30,
    );
  }
}

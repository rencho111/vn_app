import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker_plus/image_picker_plus.dart';
import 'package:video_player/video_player.dart';
import 'package:vn_app/Screen/View/Home_Screen/DisplayImages.dart';

class Get_Image extends StatefulWidget {
  const Get_Image({super.key});

  @override
  State<Get_Image> createState() => _Get_ImageState();
}

class _Get_ImageState extends State<Get_Image> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Get Images"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Gallery Image And Video"),
                          content: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                            InkWell(
                               onTap: () async {
                                 ImagePickerPlus picker = ImagePickerPlus(context);


                                 SelectedImagesDetails? details =
                                     await picker.pickImage(source: ImageSource.gallery,multiImages: true,
                                   galleryDisplaySettings: GalleryDisplaySettings(

                                     tabsTexts: _tabsTexts(),
                                     appTheme:
                                     AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
                                     cropImage: false,
                                     showImagePreview: false,
                                   ),
                                 );
                                 if (details != null) await displayDetails(details);
                               },
                              child: SvgPicture.asset(
                                  'assets/Button/Images.svg',height: 70,fit: BoxFit.fill),
                            ),
                            InkWell(
                              onTap: () async {
                                ImagePickerPlus picker = ImagePickerPlus(context);


                                SelectedImagesDetails? details =
                                    await picker.pickVideo(source: ImageSource.gallery,
                                  multiVideos: true,
                                  galleryDisplaySettings: GalleryDisplaySettings(

                                    tabsTexts: _tabsTexts(),
                                    appTheme:
                                    AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
                                    cropImage: false,
                                    showImagePreview: false,
                                  ),
                                );
                                if (details != null) await displayDetails(details);
                              },
                              child: SvgPicture.asset(
                                  'assets/Button/Video.svg',height: 70,fit: BoxFit.fill,),
                            )
                          ]),
                        );
                      },
                    );


                  },
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SvgPicture.asset(
                          'assets/Button/New_project_button.svg')))
            ]),
      ),
    );
  }

  TabsTexts _tabsTexts() {
    setState(() {});
    return TabsTexts(
      videoText: "فيديو",
      galleryText: "المعرض",
      deletingText: "حذف",
      clearImagesText: "clear selected images",
      limitingText: "The  limit is 10 photos.",
    );
  }

  Future<void> displayDetails(SelectedImagesDetails details) async {
    await Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) {
          return DisplayImages(
              selectedBytes: details.selectedFiles,
              details: details,
              aspectRatio: details.aspectRatio);
        },
      ),
    );
  }
}

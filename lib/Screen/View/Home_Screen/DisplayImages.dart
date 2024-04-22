import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker_plus/image_picker_plus.dart';
import 'package:sizer/sizer.dart';
import 'package:video_player/video_player.dart';
import 'package:vn_app/Screen/Controller/Image_Controller.dart';

class DisplayImages extends StatefulWidget {
  final List<SelectedByte> selectedBytes;
  final double aspectRatio;
  final SelectedImagesDetails details;

  const DisplayImages({
    Key? key,
    required this.details,
    required this.selectedBytes,
    required this.aspectRatio,
  }) : super(key: key);

  @override
  State<DisplayImages> createState() => _DisplayImagesState();
}

Image_Controller image_controller = Get.put(Image_Controller());

class _DisplayImagesState extends State<DisplayImages> {
  double _rotationAngle = 0.0;

  // void _rotateImage() {
  //   setState(() {
  //     // Increment the rotation angle by 90 degrees
  //     _rotationAngle += 90.0;
  //   });
  // }

  final items = [
    'assets/icon/Filter.svg',
    'assets/icon/Trim.svg',
    'assets/icon/FX.svg',
    'assets/icon/Split.svg',
    'assets/icon/Delete.svg',
    'assets/icon/Flow.svg',
    'assets/icon/Cutout.svg',
    'assets/icon/Crop.svg',
    'assets/icon/Rotate.svg',
    'assets/icon/Mirror.svg',
    'assets/icon/Flip.svg',
    'assets/icon/Fit.svg',
    'assets/icon/BG.svg',
    'assets/icon/Border.svg',
    'assets/icon/Blur.svg',
  ];
  int _selectedIndex = 0;
  List file = [].obs;
  List file1 = [].obs;
  List<String> wordsToRemove = [
    'File:',
  ];

  @override
  Widget build(BuildContext context) {
    List item2 = [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
              () => Row(
            children: image_controller.filter
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: InkWell(
                  onTap: () {
                    image_controller.f.value =
                        image_controller.filter.indexOf(element);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: ColorFiltered(
                      colorFilter: ColorFilter.matrix(element),
                      child: Image.file(widget
                          .selectedBytes[image_controller.imageindex.value]
                          .selectedFile,fit: BoxFit.fill,height:45,width: 30,scale: 5,)
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
              () => Row(
            children: image_controller.filter
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: InkWell(
                  onTap: () {
                    image_controller.f.value =
                        image_controller.filter.indexOf(element);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(element),
                        child: Image.file(widget
                            .selectedBytes[image_controller.imageindex.value]
                            .selectedFile,fit: BoxFit.fill,height:45,width: 30,scale: 5,)
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
              () => Row(
            children: image_controller.filter
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: InkWell(
                  onTap: () {
                    image_controller.f.value =
                        image_controller.filter.indexOf(element);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(element),
                        child: Image.file(widget
                            .selectedBytes[image_controller.imageindex.value]
                            .selectedFile,fit: BoxFit.fill,height:45,width: 30,scale: 5,)
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
              () => Row(
            children: image_controller.filter
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: InkWell(
                  onTap: () {
                    image_controller.f.value =
                        image_controller.filter.indexOf(element);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(element),
                        child: Image.file(widget
                            .selectedBytes[image_controller.imageindex.value]
                            .selectedFile,fit: BoxFit.fill,height:45,width: 30,scale: 5,)
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(
              () => Row(
            children: image_controller.filter
                .map(
                  (element) => Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: InkWell(
                  onTap: () {
                    widget.selectedBytes[image_controller.imageindex.value].selectedFile.deleteSync(recursive: true);
                    print("${ widget.selectedBytes[image_controller.imageindex.value].selectedFile.delete()}");
                    image_controller.f.value =
                        image_controller.filter.indexOf(element);
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(element),
                        child: Image.file(widget
                            .selectedBytes[image_controller.imageindex.value]
                            .selectedFile,fit: BoxFit.fill,height:45,width: 30,scale: 5,)
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        ),
      ),
      Text("Flow Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Cutout Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Crop Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("rotete Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Mirror  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Flip  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Fit  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("BG  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Border  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
      Text("Blur  Button",style: TextStyle(fontSize: 25,color: Colors.black,),),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Selected images/videos')),
      body:
          // Column(
          //   children: [
          //     Center(
          //       child: ElevatedButton(
          //         onPressed: () {
          //           print("${widget.selectedBytes.length}");
          //           print("${widget.selectedBytes.map((e) => e.selectedFile)}");
          //        file =
          //                widget.selectedBytes.map((e) => e.selectedFile).toList();
          //           print("${file}");
          //
          //           List<String> modifiedWords = words.map((word) => word == 'apple' ? word.replaceAll('pp', '') : word).toList();
          //
          //           file.removeWhere((element) => wordsToRemove.contains(element));
          //
          //           print("Last index :- ${file}");
          //
          //         },
          //         child: Text("Demo"),
          //       ),
          //     ),
          //     // Image.file(File("${file.last}"))
          //   ],
          // ),
          // Row(
          //   children: widget.selectedBytes.map((e) => Image.file(File('$e'))).toList(),
          // )

          Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 40.h,
                    width: 80.w,
                    color: Colors.black12,
                    child: ColorFiltered(
                        colorFilter: ColorFilter.matrix(
                            image_controller.filter[image_controller.f.value]),
                        child: Transform.rotate(
                          angle: _rotationAngle * (3.1415926535897932 / 180),

                          child: Transform.scale(
                            scaleX: image_controller.mirror.value?-1:1,
                            child: Transform.scale(
                            scale: image_controller.filp.value?-1:1,
                              child: Image.file(widget
                                  .selectedBytes[image_controller.imageindex.value]
                                  .selectedFile),
                            ),
                          ),
                        )),
                  )),
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  SelectedByte selectedByte = widget.selectedBytes[index];
                  if (!selectedByte.isThatImage) {
                    return _DisplayVideo(selectedByte: selectedByte);
                  } else {
                    return InkWell(
                      onTap: () {
                        image_controller.imageindex.value = index;
                      },
                      child: Image.file(
                        selectedByte.selectedFile,
                        fit: BoxFit.fill,
                      ),
                    );
                  }
                },
                itemCount: widget.selectedBytes.length,
              ),
            ),

          ],
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 12,
            width: double.infinity,
            color: Colors.black26,
            child: item2[_selectedIndex],


          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 56, // Adjust as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                    if(_selectedIndex == 8)
                      {
                        _rotationAngle += 90.0;

                        print("hyy");

                      }
                    else if(_selectedIndex == 9)
                      {
                        image_controller.mirror.value = !image_controller.mirror.value;


                      }
                    else if(_selectedIndex == 10){
                      image_controller.filp.value = !image_controller.filp.value;

                      print("${_selectedIndex}");

                    }
                    else if(_selectedIndex ==11)
                      {

                      }
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  color: index == _selectedIndex ? Colors.blue : Colors.black87,
                  child: SvgPicture.asset(
                    "${items[index]}",
                  ),
                ),
              );
            },
          ),
        ),
      ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
// iconSize: 40,
//           items: [
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Filter.svg',color: Colors.blueGrey,fit: BoxFit.fill),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Trim.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/FX.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Split.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Delete.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Flow.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Cutout.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Crop.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Rotate.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Mirror.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Flip.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Fit.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/BG.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Border.svg',color: Colors.blueGrey),label: "",),
//         BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Blur.svg',color: Colors.blueGrey),label: "",),
//       ]),
    );
  }
}

class _DisplayVideo extends StatefulWidget {
  final SelectedByte selectedByte;

  const _DisplayVideo({Key? key, required this.selectedByte}) : super(key: key);

  @override
  State<_DisplayVideo> createState() => _DisplayVideoState();
}

class _DisplayVideoState extends State<_DisplayVideo> {
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    File file = widget.selectedByte.selectedFile;
    controller = VideoPlayerController.file(file);
    initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: VideoPlayer(controller),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (controller.value.isPlaying) {
                        controller.pause();
                      } else {
                        controller.play();
                      }
                    });
                  },
                  child: Icon(
                    controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                    color: Colors.white,
                    size: 45,
                  ),
                ),
              )
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(strokeWidth: 1),
          );
        }
      },
    );
  }
}

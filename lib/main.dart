// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_plus/image_picker_plus.dart';
// import 'package:video_player/video_player.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Custom gallery display',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               normal1(context),
//               normal2(context),
//               normal3(context),
//               preview1(context),
//               preview2(context),
//               preview3(context),
//               camera1(context),
//               camera2(context),
//             ]),
//       ),
//     );
//   }
//
//   ElevatedButton normal1(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//
//           print("image counter ");
//
//
//         ImagePickerPlus picker = ImagePickerPlus(context);
//
//
//         SelectedImagesDetails? details =
//         await picker.pickBoth(source: ImageSource.gallery, multiSelection: true,
//           galleryDisplaySettings: GalleryDisplaySettings(
//             tabsTexts: _tabsTexts(),
//             appTheme:
//             AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
//             cropImage: false,
//             showImagePreview: false,
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Normal 1"),
//     );
//
//   }
//
//   ElevatedButton normal2(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickVideo(
//           source: ImageSource.both,
//
//           /// On long tap, it will be available.
//           multiVideos: true,
//           galleryDisplaySettings: GalleryDisplaySettings(
//             gridDelegate: _sliverGrid2Delegate(),
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Normal 2"),
//     );
//   }
//
//   ElevatedButton normal3(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickBoth(
//           source: ImageSource.both,
//
//           /// On long tap, it will be available.
//           multiSelection: true,
//
//           /// When you make ImageSource from the camera these settings will be disabled because they belong to the gallery.
//           galleryDisplaySettings: GalleryDisplaySettings(
//             appTheme:
//             AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
//             gridDelegate: _sliverGrid3Delegate(),
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Normal 3"),
//     );
//   }
//
//   ElevatedButton preview1(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickBoth(
//           source: ImageSource.gallery,
//
//           /// On long tap, it will be available.
//           multiSelection: true,
//           galleryDisplaySettings: GalleryDisplaySettings(
//             tabsTexts: _tabsTexts(),
//             appTheme:
//             AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
//             cropImage: true,
//             showImagePreview: true,
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Preview 1"),
//     );
//   }
//
//   ElevatedButton preview2(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickVideo(
//           source: ImageSource.both,
//
//           /// On long tap, it will be available.
//           multiVideos: true,
//           galleryDisplaySettings: GalleryDisplaySettings(
//             cropImage: true,
//             showImagePreview: true,
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Preview 2"),
//     );
//   }
//
//   SliverGridDelegateWithFixedCrossAxisCount _sliverGrid3Delegate() {
//     return const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 3,
//       crossAxisSpacing: 1.7,
//       mainAxisSpacing: 1.5,
//       childAspectRatio: .5,
//     );
//   }
//
//   SliverGridDelegateWithFixedCrossAxisCount _sliverGrid2Delegate() {
//     return const SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       crossAxisSpacing: 17,
//       mainAxisSpacing: 17,
//       childAspectRatio: 1,
//     );
//   }
//
//   TabsTexts _tabsTexts() {
//     setState(() {
//
//     });
//     return TabsTexts(
//       videoText: "فيديو",
//       galleryText: "المعرض",
//       deletingText: "حذف",
//       clearImagesText: "clear selected images",
//       limitingText: "The  limit is 10 photos.",
//     );
//   }
//
//   ElevatedButton preview3(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickBoth(
//           source: ImageSource.both,
//
//           /// On long tap, it will be available.
//           multiSelection: true,
//
//           galleryDisplaySettings:
//           GalleryDisplaySettings(cropImage: true, showImagePreview: true),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Preview 3"),
//     );
//   }
//
//   ElevatedButton camera1(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickBoth(
//           source: ImageSource.camera,
//
//           /// On long tap, it will be available.
//           multiSelection: true,
//
//           galleryDisplaySettings: GalleryDisplaySettings(
//             cropImage: true,
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("Camera 1"),
//     );
//   }
//
//   ElevatedButton camera2(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () async {
//         ImagePickerPlus picker = ImagePickerPlus(context);
//         SelectedImagesDetails? details = await picker.pickVideo(
//           source: ImageSource.camera,
//
//           /// On long tap, it will be available.
//           multiVideos: true,
//
//           galleryDisplaySettings: GalleryDisplaySettings(
//             appTheme:
//             AppTheme(focusColor: Colors.white, primaryColor: Colors.black),
//           ),
//         );
//         if (details != null) await displayDetails(details);
//       },
//       child: const Text("camera 2"),
//     );
//   }
//
//   Future<void> displayDetails(SelectedImagesDetails details) async {
//     await Navigator.of(context).push(
//       CupertinoPageRoute(
//         builder: (context) {
//           return DisplayImages(
//               selectedBytes: details.selectedFiles,
//               details: details,
//               aspectRatio: details.aspectRatio);
//         },
//       ),
//     );
//   }
// }
//
// class DisplayImages extends StatefulWidget {
//   final List<SelectedByte> selectedBytes;
//   final double aspectRatio;
//   final SelectedImagesDetails details;
//   const DisplayImages({
//     Key? key,
//     required this.details,
//     required this.selectedBytes,
//     required this.aspectRatio,
//   }) : super(key: key);
//
//   @override
//   State<DisplayImages> createState() => _DisplayImagesState();
// }
//
// class _DisplayImagesState extends State<DisplayImages> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Selected images/videos')),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           SelectedByte selectedByte = widget.selectedBytes[index];
//           if (!selectedByte.isThatImage) {
//             return _DisplayVideo(selectedByte: selectedByte);
//           } else {
//             return SizedBox(
//               width: double.infinity,
//               child: Image.file(selectedByte.selectedFile),
//             );
//           }
//         },
//         itemCount: widget.selectedBytes.length,
//       ),
//     );
//   }
// }
//
// class _DisplayVideo extends StatefulWidget {
//   final SelectedByte selectedByte;
//   const _DisplayVideo({Key? key, required this.selectedByte}) : super(key: key);
//
//   @override
//   State<_DisplayVideo> createState() => _DisplayVideoState();
// }
//
// class _DisplayVideoState extends State<_DisplayVideo> {
//   late VideoPlayerController controller;
//   late Future<void> initializeVideoPlayerFuture;
//
//   @override
//   void initState() {
//     super.initState();
//     File file = widget.selectedByte.selectedFile;
//     controller = VideoPlayerController.file(file);
//     initializeVideoPlayerFuture = controller.initialize();
//     controller.setLooping(true);
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: initializeVideoPlayerFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.done) {
//           return Stack(
//             alignment: Alignment.center,
//             children: [
//               AspectRatio(
//                 aspectRatio: controller.value.aspectRatio,
//                 child: VideoPlayer(controller),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       if (controller.value.isPlaying) {
//                         controller.pause();
//                       } else {
//                         controller.play();
//                       }
//                     });
//                   },
//                   child: Icon(
//                     controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//                     color: Colors.white,
//                     size: 45,
//                   ),
//                 ),
//               )
//             ],
//           );
//         } else {
//           return const Center(
//             child: CircularProgressIndicator(strokeWidth: 1),
//           );
//         }
//       },
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<String> words = ['apple', 'banana', 'orange', 'apple', 'grape'];
//
//     // Remove occurrences of "pp" from the word "apple"
//     List<String> modifiedWords = words.map((word) => word == 'apple' ? word.replaceAll('pp', '') : word).toList();
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Word Removal Example'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Original List:',
//                 style: TextStyle(fontSize: 18),
//               ),
//               Text(
//                 words.join(', '),
//                 style: TextStyle(fontSize: 18),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Modified List:',
//                 style: TextStyle(fontSize: 18),
//               ),
//               Text(
//                 modifiedWords.join(', '),
//                 style: TextStyle(fontSize: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Image Filter Example'),
//         ),
//         body: Center(
//           child: ImageFilterExample(),
//         ),
//       ),
//     );
//   }
// }
//
// class ImageFilterExample extends StatefulWidget {
//   @override
//   _ImageFilterExampleState createState() => _ImageFilterExampleState();
// }
//
// class _ImageFilterExampleState extends State<ImageFilterExample> {
//   int _currentFilterIndex = 0;
//
//   final List<List<double>> _filterMatrices = [
//     // Define a list of filter matrices
//     // Each matrix represents a different filter effect
//   [
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0,      0,      0,      1, 0,
//     ],
//     [
//       0.393, 0.769, 0.189, 0, 0,
//       0.349, 0.686, 0.168, 0, 0,
//       0.272, 0.534, 0.131, 0, 0,
//       0,     0,     0,     1, 0,
//     ],
//     [
//       -1,  0,  0, 0, 255,
//       0, -1,  0, 0, 255,
//       0,  0, -1, 0, 255,
//       0,  0,  0, 1,   0,
//     ],
//     [
//       1, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       0, 0, 0, 0, 0,
//       0, 1, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       0, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 1, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       1, 0, 0, 0, 50,
//       0, 1, 0, 0, 50,
//       0, 0, 1, 0, 50,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       1, 0, 0, 0, -50,
//       0, 1, 0, 0, -50,
//       0, 0, 1, 0, -50,
//       0, 0, 0, 1,   0,
//     ],
//     [
//       2, 0, 0, 0, -255,
//       0, 2, 0, 0, -255,
//       0, 0, 2, 0, -255,
//       0, 0, 0, 1,     0,
//     ],
//     [
//       0.5, 0,   0,   0,   0,
//       0,   0.5, 0,   0,   0,
//       0,   0,   0.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       1.5, 0,   0,   0,   0,
//       0,   1.5, 0,   0,   0,
//       0,   0,   1.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       0.5, 0,   0,   0,   0,
//       0,   0.5, 0,   0,   0,
//       0,   0,   0.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       0.866, -0.866, 0, 0, 0,
//       0.5,    0.5,   0, 0, 0,
//       -0.866, -0.866, 1, 0, 0,
//       0,      0,     0, 1, 0,
//     ],
//     [
//       0.0625, 0.125, 0.0625, 0, 0,
//       0.125,  0.25,  0.125,  0, 0,
//       0.0625, 0.125, 0.0625, 0, 0,
//       0,       0,     0,      1, 0,
//     ],
//     [
//       0, -1, 0, 0, 0,
//       -1, 5, -1, 0, 0,
//       0, -1, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       -2, -1, 0, 0, 0,
//       -1,  1,  1, 0, 0,
//       0,   1,  2, 0, 0,
//       0,   0,  0, 1, 0,
//     ],
//     // Add more filter matrices as needed
//   ];
//
//   void _changeFilter() {
//     setState(() {
//       _currentFilterIndex = (_currentFilterIndex + 1) % _filterMatrices.length;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _changeFilter,
//       child: ColorFiltered(
//         colorFilter: ColorFilter.matrix(_filterMatrices[_currentFilterIndex]),
//         child: Container(
//           width: 300,
//           height: 300,
//           child: SvgPicture.asset("assets/Button/New_project_button.svg",fit: BoxFit.fill),
//         ),
//       ),
//     );
//   }
// }
//


// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Image Filter Example'),
//         ),
//         body: Center(
//           child: ImageFilterExample(),
//         ),
//       ),
//     );
//   }
// }
//
// class ImageFilterExample extends StatelessWidget {
//   int _currentFilterIndex = 0;
//   // Define the grayscale color matrix
//   final List<List<double>> _filterMatrices = [
//     [
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0.2126, 0.7152, 0.0722, 0, 0,
//       0,      0,      0,      1, 0,
//     ],
//     [
//       0.393, 0.769, 0.189, 0, 0,
//       0.349, 0.686, 0.168, 0, 0,
//       0.272, 0.534, 0.131, 0, 0,
//       0,     0,     0,     1, 0,
//     ],
//     [
//       -1,  0,  0, 0, 255,
//       0, -1,  0, 0, 255,
//       0,  0, -1, 0, 255,
//       0,  0,  0, 1,   0,
//     ],
//     [
//       1, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       0, 0, 0, 0, 0,
//       0, 1, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       0, 0, 0, 0, 0,
//       0, 0, 0, 0, 0,
//       0, 0, 1, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       1, 0, 0, 0, 50,
//       0, 1, 0, 0, 50,
//       0, 0, 1, 0, 50,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       1, 0, 0, 0, -50,
//       0, 1, 0, 0, -50,
//       0, 0, 1, 0, -50,
//       0, 0, 0, 1,   0,
//     ],
//     [
//       2, 0, 0, 0, -255,
//       0, 2, 0, 0, -255,
//       0, 0, 2, 0, -255,
//       0, 0, 0, 1,     0,
//     ],
//     [
//       0.5, 0,   0,   0,   0,
//       0,   0.5, 0,   0,   0,
//       0,   0,   0.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       1.5, 0,   0,   0,   0,
//       0,   1.5, 0,   0,   0,
//       0,   0,   1.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       0.5, 0,   0,   0,   0,
//       0,   0.5, 0,   0,   0,
//       0,   0,   0.5, 0,   0,
//       0,   0,   0,   1,   0,
//     ],
//     [
//       0.866, -0.866, 0, 0, 0,
//       0.5,    0.5,   0, 0, 0,
//       -0.866, -0.866, 1, 0, 0,
//       0,      0,     0, 1, 0,
//     ],
//     [
//       0.0625, 0.125, 0.0625, 0, 0,
//       0.125,  0.25,  0.125,  0, 0,
//       0.0625, 0.125, 0.0625, 0, 0,
//       0,       0,     0,      1, 0,
//     ],
//     [
//       0, -1, 0, 0, 0,
//       -1, 5, -1, 0, 0,
//       0, -1, 0, 0, 0,
//       0, 0, 0, 1, 0,
//     ],
//     [
//       -2, -1, 0, 0, 0,
//       -1,  1,  1, 0, 0,
//       0,   1,  2, 0, 0,
//       0,   0,  0, 1, 0,
//     ],
//   ];
//   void _changeFilter() {
//       _currentFilterIndex = (_currentFilterIndex + 1) % _filterMatrices.length;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//
//
//
//     return GestureDetector(
//       onTap: _changeFilter,
//
//       child: ColorFiltered(
//         colorFilter: ColorFilter.matrix(_filterMatrices[_currentFilterIndex]),
//         child:SvgPicture.asset(
//           'assets/Button/New_project_button.svg', // Replace with your image URL
//           width: 300,
//           height: 300,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vn_app/Screen/View/Bottom_Navigator%20_demo_page/Image_rotead.dart';
import 'package:vn_app/Screen/View/Bottom_Screen/View/Bottom_Screen.dart';
import 'package:vn_app/Screen/View/Home_Screen/Get_Image.dart';
import 'package:vn_app/Screen/View/Home_Screen/Home_Screen.dart';
import 'package:vn_app/Screen/View/Splash_Screen.dart';
import 'package:vn_app/demo_prectise.dart';

import 'Screen/View/Setting_Screen.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        initialRoute: 'D',
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => Setting_Screen(),
          '/': (context) => Splash_Screen(),
          'b': (context) => Bottom(),
          'h': (context) => Home_Screen(),
          's': (context) => Setting_Screen(),
          'g': (context) => Get_Image(),
          'D': (context) => Demo_Practice(),
          'R': (context) => MyImageRotator(),

        },
      ),
    ),
  );
}


//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ZoomOutAnimation(),
//     );
//   }
// }
//
// class ZoomOutAnimation extends StatefulWidget {
//   @override
//   _ZoomOutAnimationState createState() => _ZoomOutAnimationState();
// }
//
// class _ZoomOutAnimationState extends State<ZoomOutAnimation> {
//   double _scale = 1.0;
//
//   void _startAnimation() {
//     setState(() {
//       _scale = 0.5; // Set scale factor for zoom out
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Zoom Out Animation'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             AnimatedContainer(
//               duration: Duration(seconds: 1), // Set animation duration
//               curve: Curves.easeInOut, // Set animation curve
//               transform: Matrix4.identity()..scale(_scale),
//               child: FlutterLogo(
//                 size: 200,
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _startAnimation,
//               child: Text('Zoom Out'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ImageAnimation(),
//     );
//   }
// }
//
// class ImageAnimation extends StatefulWidget {
//   @override
//   _ImageAnimationState createState() => _ImageAnimationState();
// }
//
// class _ImageAnimationState extends State<ImageAnimation> {
//   double _scale = 1.0;
//   Offset _offset = Offset.zero;
//
//   void _zoomIn() {
//     setState(() {
//       _scale = 2.0;
//     });
//   }
//
//   void _zoomOut() {
//     setState(() {
//       _scale = 1.0;
//     });
//   }
//
//   void _moveRight() {
//     setState(() {
//       _offset = Offset(_offset.dx + 50, _offset.dy);
//     });
//   }
//
//   void _moveLeft() {
//     setState(() {
//       _offset = Offset(_offset.dx - 50, _offset.dy);
//     });
//   }
//
//   void _moveDown() {
//     setState(() {
//       _offset = Offset(_offset.dx, _offset.dy + 50);
//     });
//   }
//
//   void _moveUp() {
//     setState(() {
//       _offset = Offset(_offset.dx, _offset.dy - 50);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Animation'),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onDoubleTap: _zoomIn,
//           onLongPress: _zoomOut,
//           onHorizontalDragUpdate: (details) {
//             setState(() {
//               _offset = Offset(_offset.dx + details.delta.dx, _offset.dy);
//             });
//           },
//           onVerticalDragUpdate: (details) {
//             setState(() {
//               _offset = Offset(_offset.dx, _offset.dy + details.delta.dy);
//             });
//           },
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             transform: Matrix4.identity()
//               ..translate(_offset.dx, _offset.dy)
//               ..scale(_scale),
//             child: Image.asset('assets/image.jpg'), // Replace with your image
//           ),
//         ),
//       ),
//       persistentFooterButtons: [
//         ElevatedButton(
//           onPressed: _moveLeft,
//           child: Icon(Icons.arrow_back),
//         ),
//         ElevatedButton(
//           onPressed: _moveUp,
//           child: Icon(Icons.arrow_upward),
//         ),
//         ElevatedButton(
//           onPressed: _moveDown,
//           child: Icon(Icons.arrow_downward),
//         ),
//         ElevatedButton(
//           onPressed: _moveRight,
//           child: Icon(Icons.arrow_forward),
//         ),
//       ],
//     );
//   }
// }








//
// import 'dart:typed_data';
//
// import 'package:flutter/material.dart';
// import 'package:crop_your_image/crop_your_image.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Cropper',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ImageCropperPage(),
//     );
//   }
// }
//
// class ImageCropperPage extends StatefulWidget {
//   @override
//   _ImageCropperPageState createState() => _ImageCropperPageState();
// }
//
// class _ImageCropperPageState extends State<ImageCropperPage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Cropper'),
//       ),
//       body: Center(
//         child: AspectRatio(
//           aspectRatio: 16 / 9, // Set your desired aspect ratio here
//           child: Crop(
//             image: Image.asset('assets/your_image.jpg').image, // Replace 'assets/your_image.jpg' with your image path
//             aspectRatio: 16 / 9, onCropped: (Uint8List value) {  }, // Set your desired aspect ratio here
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           // Get the cropped image
//           final croppedFile = await _cropKey.currentState!.cropCompleted(
//             maxWidth: 1920,
//             maxHeight: 1080,
//             quality: 100,
//           );
//           // Do something with the cropped image file
//           print('Cropped image path: ${croppedFile?.path}');
//         },
//         child: Icon(Icons.crop),
//       ),
//     );
//   }
// }




//
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primaryColor: Colors.green),
//       home: const VideoSelector(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class VideoSelector extends StatefulWidget {
//   const VideoSelector({super.key});
//
//   @override
//   State<VideoSelector> createState() => _VideoSelectorState();
// }
//
// class _VideoSelectorState extends State<VideoSelector> {
//   File? galleryFile;
//   final picker = ImagePicker();
//   @override
//   Widget build(BuildContext context) {
//
//     // display image selected from gallery
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Gallery and Camera Access'),
//         backgroundColor: Colors.green,
//         actions: const [],
//       ),
//       body: Builder(
//         builder: (BuildContext context) {
//           return Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.green)),
//                   child: const Text('Select video from Gallery and Camera'),
//                   onPressed: () {
//                     _showPicker(context: context);
//                   },
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   height: 200.0,
//                   width: 300.0,
//                   child: galleryFile == null
//                       ? const Center(child: Text('Sorry nothing selected!!'))
//                       : Center(child: Text(galleryFile!.path)),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 18.0),
//                   child: Text(
//                     "GFG",
//                     textScaleFactor: 3,
//                     style: TextStyle(color: Colors.green),
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   void _showPicker({
//     required BuildContext context,
//   }) {
//     showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: Wrap(
//             children: <Widget>[
//               ListTile(
//                 leading: const Icon(Icons.photo_library),
//                 title: const Text('Gallery'),
//                 onTap: () {
//                   getVideo(ImageSource.gallery);
//                   Navigator.of(context).pop();
//                 },
//               ),
//               ListTile(
//                 leading: const Icon(Icons.photo_camera),
//                 title: const Text('Camera'),
//                 onTap: () {
//                   getVideo(ImageSource.camera);
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   Future getVideo(
//       ImageSource img,
//       ) async {
//     final pickedFile = await picker.pickVideo(
//         source: img,
//         preferredCameraDevice: CameraDevice.front,
//         maxDuration: const Duration(minutes: 10));
//     XFile? xfilePick = pickedFile;
//     setState(
//           () {
//         if (xfilePick != null) {
//           galleryFile = File(pickedFile!.path);
//         } else {
//           ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
//               const SnackBar(content: Text('Nothing is selected')));
//         }
//       },
//     );
//   }
// }

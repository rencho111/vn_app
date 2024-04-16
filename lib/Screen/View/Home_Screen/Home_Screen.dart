
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  File? imageFile;
  bool isImageSelected = false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Your Project"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Get.toNamed('g');

        },child: Icon(Icons.add)),

      ),
    );
  }
}

// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:vn_app/Screen/View/Setting_Screen.dart';
//
// class Home_Screen extends StatefulWidget {
//   const Home_Screen({super.key});
//
//   @override
//   State<Home_Screen> createState() => _Home_ScreenState();
// }
//
// class _Home_ScreenState extends State<Home_Screen> {
//   int _selectedIndex = 0;
//   final _pageController = PageController(initialPage: 0);
//   final _controller = NotchBottomBarController(index: 0);
//   int maxCount = 5;
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
//
//
//   final List<Widget> bottomBarPages = [
//     const Page1(),
//     const Page2(),
//     const Setting_Screen(),
//     const Setting_Screen(),
//     const Page5(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // appBar: AppBar(
//         //   title: Text("Your Project"),
//         // ),
//         body: PageView(
//           controller: _pageController,
//           physics: const NeverScrollableScrollPhysics(),
//           children: List.generate(
//               bottomBarPages.length, (index) => bottomBarPages[index]),
//         ),
//         extendBody: true,
//         bottomNavigationBar: (bottomBarPages.length <= maxCount)
//             ? AnimatedNotchBottomBar(
//           /// Provide NotchBottomBarController
//           notchBottomBarController: _controller,
//           color: Colors.white,
//           showLabel: false,
//
//           // notchShader: const SweepGradient(
//           //   startAngle: 0,
//           //   endAngle: pi / 2,
//           //   colors: [Colors.red, Colors.green, Colors.orange],
//           //   tileMode: TileMode.mirror,
//           // ).createShader(Rect.fromCircle(center: Offset.zero, radius: 8.0)),
//           notchColor: Colors.black87,
//
//           /// restart app if you change removeMargins
//           removeMargins: false,
//           bottomBarWidth: 500,
//           showShadow: false,
//           durationInMilliSeconds: 300,
//
//           bottomBarItems:  [
//             BottomBarItem(
//               inActiveItem: Icon(
//                 Icons.home_filled,
//                 color: Colors.blueGrey,
//               ),
//               activeItem: Icon(
//                 Icons.home_filled,
//                 color: Colors.white,
//               ),
//               itemLabel: 'Page 1',
//             ),
//             BottomBarItem(
//               inActiveItem: Icon(
//                 Icons.search,
//                 color: Colors.blueGrey,
//               ),
//               activeItem: Icon(
//                 Icons.search,
//                 color: Colors.white,
//               ),
//               itemLabel: 'Page 2',
//             ),
//             BottomBarItem(
//               inActiveItem:SvgPicture.asset('assets/icon/teenyicons_safari-outline.svg',color: Colors.blueGrey),
//               activeItem:SvgPicture.asset('assets/icon/teenyicons_safari-outline.svg',color: Colors.white),
//               itemLabel: 'Page 4',
//             ),
//             BottomBarItem(
//               inActiveItem: Icon(Icons.abc),
//               activeItem: Icon(
//                 Icons.person,
//                 color: Colors.yellow,
//               ),
//               itemLabel: 'Page 5',
//             ),
//           ],
//           onTap: (index) {
//             /// perform action on tab change and to update pages you can update pages without pages
//             print('current selected index $index');
//             _pageController.jumpToPage(index);
//           },
//         )
//             : null,
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.yellow, child: const Center(child: Text('Page 1')));
//   }
// }
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.green, child: const Center(child: Text('Page 2')));
//   }
// }
//
// class Page3 extends StatelessWidget {
//   const Page3({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.red, child: const Center(child: Text('Page 3')));
//   }
// }
//
// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.blue, child: const Center(child: Text('Page 4')));
//   }
// }
//
// class Page5 extends StatelessWidget {
//   const Page5({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.lightGreenAccent,
//         child: const Center(child: Text('Page 5')));
//   }
// }

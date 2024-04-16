import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vn_app/Screen/View/Home_Screen/Home_Screen.dart';
import 'package:vn_app/Screen/View/Setting_Screen.dart';




class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List l1 = [
    Home_Screen(),
    Setting_Screen(),
    Home_Screen(),
    Setting_Screen(),
    Home_Screen(),
  ];
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: l1[i],
        bottomNavigationBar: BottomNavigationBar(

          onTap: (index) {
            setState(() {
              i = index;
            });
          },
          currentIndex: i,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/teenyicons_safari-outline.svg',color: Colors.blueGrey),label: "",),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/crown.svg',color: Colors.blueGrey),label: "",),
            BottomNavigationBarItem(icon: SvgPicture.asset('assets/icon/Vector.svg',color: Colors.blueGrey),label: "",),
          ],
        ),
      ),
    );
  }
}
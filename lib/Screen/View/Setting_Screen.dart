import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Setting_Screen extends StatefulWidget {
  const Setting_Screen({super.key});

  @override
  State<Setting_Screen> createState() => _Setting_ScreenState();
}

class _Setting_ScreenState extends State<Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Demo'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          ],

        ),
        body: Column(children: [
          Padding(
            padding:  EdgeInsets.only(top: Get.height/25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(backgroundColor: Colors.blueGrey,maxRadius: Get.height/16),
                SizedBox(width: Get.width/20,),
                Text("Please Login/register",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: Get.height/30),
            child: Divider(
              height: 5, //height spacing of divider
              thickness: 3, //thickness of divier line
                          //
            ),
          ),
          ListTile(title:Text("Template ") ,leading: Icon(Icons.slow_motion_video),trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,)),),
          ListTile(title:Text("BeatsClips ") ,leading: Icon(Icons.power),trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,)),),
          Padding(
            padding:  EdgeInsets.only(top: Get.height/30),
            child: Divider(
              height: 5, //height spacing of divider
              thickness: 3, //thickness of divier line
              //
            ),
          ),
          ListTile(title:Text("Project Trash ") ,leading: Icon(CupertinoIcons.delete),trailing:
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("0"),
              IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,)),
            ],
          ),)


          // Container(width: Get.width,height: 7,color: Colors.black12,),
          //
          //
          // ListTile(title:Text("BeatsClips ") ,leading: Icon(Icons.power),trailing: IconButton(onPressed: (){},icon: Icon(Icons.arrow_forward_ios,size: 20,)),)
          // ,


        ]),
      ),
    );
  }
}

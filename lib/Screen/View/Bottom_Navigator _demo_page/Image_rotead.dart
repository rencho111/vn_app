import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImageRotator extends StatefulWidget {
  @override
  _MyImageRotatorState createState() => _MyImageRotatorState();
}

class _MyImageRotatorState extends State<MyImageRotator> {
  double _rotationAngle = 0.0;

  void _rotateImage() {
    setState(() {
      // Increment the rotation angle by 90 degrees
      _rotationAngle += 90.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Rotation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace 'image.jpg' with your image path
            Transform.rotate(
              angle: _rotationAngle * (3.1415926535897932 / 180),
              child: Image.asset(
                'assets/Button/IMG_20230402_153448.jpg',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _rotateImage,
              child: Text('Rotate'),
            ),
          ],
        ),
      ),
    );
  }
}
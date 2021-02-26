import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  ImagePicker imagePicker;

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  Future<void> chooseImageFromGallery() async {}
  Future<void> takePictureWithCamera() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _image != null ? Image.file(_image) : Icon(Icons.image, size: 100.0),
          Center(
            child: RaisedButton(
              child: Text('Choose/Capture new'),
              onPressed: () {},
              onLongPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}

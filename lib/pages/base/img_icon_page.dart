import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/common/buildMarkdown.dart';
import 'package:flutter_example_app/part/part-img-icon.dart';

class ImageAndIconPage extends StatefulWidget {
  @override
  _ImageAndIconPageState createState() => _ImageAndIconPageState();
}

class _ImageAndIconPageState extends State<ImageAndIconPage> {
  @override
  Widget build(BuildContext context) {
    Routers args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            BuildMarkdown(imgIconWidgetIntro),
          ],
        ),
      ),
    );
  }
}

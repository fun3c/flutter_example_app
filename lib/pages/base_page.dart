import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/nav_data.dart';
import 'package:flutter_example_app/pages/base/base_main.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    NavItem args = ModalRoute.of(context).settings.arguments;
    Widget currentWidget() {
      if (args.routeName == "base_page") {
        return new BaseContent();
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(args.label),
        ),
        body: currentWidget());
  }
}

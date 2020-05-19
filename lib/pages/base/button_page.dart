import 'package:flutter/material.dart';
import 'package:flutter_example_app/part/part-button.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../common/nav_data.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    Children args = ModalRoute.of(context).settings.arguments;

    Widget buildIntro(String data,
        [double L = 20.0, double T = 20.0, double R = 20.0, double B = 0]) {
      return Padding(
        padding: EdgeInsets.only(left: L, top: T, right: R, bottom: B),
        child: Text(data, style: TextStyle(fontSize: 15.0)),
      );
    }

    Widget buildTitle(String title,
        [double L = 20.0, double T = 20.0, double B = 2.0]) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: L, top: T, bottom: B),
        child: Text(
          title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget buildMarkdown(String data, double height) {
      return Container(
        width: double.infinity,
        height: height,
        child: Markdown(data: data),
      );
    }

    Widget buildBtnText({String btnText = 'Button'}) {
      return Text(btnText, style: TextStyle(fontSize: 20.0));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(args.label),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            buildIntro(widgetIntro),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildTitle('Flat Button'),
                buildIntro(flatButtonIntro, 20, 0, 0, 20),
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(8.0),
                  child: buildBtnText(),
                ),
                buildMarkdown(flatButton1, 146),
                FlatButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.blue,
                  label: buildBtnText(),
                ),
                buildMarkdown(flatButton2, 140),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildTitle('Raised Button'),
                buildIntro(raisedButtonIntro, 20, 0, 0, 20),
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: buildBtnText(),
                ),
                buildMarkdown(raisedButton1, 146),
                RaisedButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  label: buildBtnText(),
                ),
                buildMarkdown(raisedButton2, 140),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildTitle('Outline Button'),
                buildIntro(outlineButtonIntro, 20, 0, 0, 20),
                OutlineButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  highlightedBorderColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                  child: buildBtnText(),
                ),
                buildMarkdown(OutlineButton1, 146),
                OutlineButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.blue,
                  highlightedBorderColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                  label: buildBtnText(),
                ),
                buildMarkdown(OutlineButton2, 140),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

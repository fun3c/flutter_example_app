import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/common/buildMarkdown.dart';
import 'package:flutter_example_app/part/part-button.dart';

class ButtonPage extends StatefulWidget {
  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  final isSelected = <bool>[false, false, false];
  double _volume = 0;

  @override
  Widget build(BuildContext context) {
    Routers args = ModalRoute.of(context).settings.arguments;

    Widget buildBtnText({String btnText = 'Button'}) {
      return Text(btnText, style: TextStyle(fontSize: 16.0));
    }

    return Scaffold(
      backgroundColor: Colors.grey[60],
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            BuildMarkdown(widgetIntro),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(flatButtonIntro),
                FlatButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  padding: EdgeInsets.all(8.0),
                  child: buildBtnText(),
                ),
                BuildMarkdown(flatButton1),
                FlatButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.blue,
                  label: buildBtnText(),
                ),
                BuildMarkdown(flatButton2),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(raisedButtonIntro),
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: buildBtnText(),
                ),
                BuildMarkdown(raisedButton1),
                RaisedButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.white,
                  color: Colors.blue,
                  label: buildBtnText(),
                ),
                BuildMarkdown(raisedButton2),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(outlineButtonIntro),
                OutlineButton(
                  onPressed: () {},
                  textColor: Colors.blue,
                  highlightedBorderColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                  child: buildBtnText(),
                ),
                BuildMarkdown(OutlineButton1),
                OutlineButton.icon(
                  icon: const Icon(Icons.add, size: 20.0),
                  onPressed: () {},
                  textColor: Colors.blue,
                  highlightedBorderColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                  label: buildBtnText(),
                ),
                BuildMarkdown(OutlineButton2),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(IconButtonIntro),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _volume += 10;
                    });
                  },
                  icon: Icon(Icons.volume_up),
                  tooltip: 'Increase volume by 10',
                ),
                Text('Volume: $_volume'),
                BuildMarkdown(IconButton1),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(toggleBtnIntro),
                ToggleButtons(
                  children: [
                    Icon(Icons.ac_unit),
                    Icon(Icons.call),
                    Icon(Icons.cake),
                  ],
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index ? !isSelected[i] : false;
                      }
                    });
                  },
                  isSelected: isSelected,
                ),
                BuildMarkdown(toggleBtn1)
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BuildMarkdown(customBtnIntro),
                Container(
                  width: 350,
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          child: buildBtnText(btnText: '取消'),
                          color: Colors.grey[200],
//                  highlightedBorderColor:
//                      Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                      Expanded(child: SizedBox(width: 10)),
                      Expanded(
                        child: RaisedButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          color: Colors.blue[600],
                          child: buildBtnText(btnText: '确定'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                BuildMarkdown(customBtn1)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

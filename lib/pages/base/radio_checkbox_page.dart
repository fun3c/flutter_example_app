import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/common/buildMarkdown.dart';
import 'package:flutter_example_app/part/part_radio_checkbox.dart';

class RadioCheckboxPage extends StatefulWidget {
  @override
  _RadioCheckboxPageState createState() => _RadioCheckboxPageState();
}

class _RadioCheckboxPageState extends State<RadioCheckboxPage> {
  bool checkboxValue1 = true;
  bool checkboxValue2 = false;
  bool checkboxValue3;
  int radioValue = 0;
  bool switchValue = false;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Routers args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: ListView(
        children: <Widget>[
          BuildMarkdown(radioCheckboxIntro1),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Checkbox(
                  value: checkboxValue1,
                  onChanged: (value) {
                    setState(() {
                      checkboxValue1 = value;
                    });
                  },
                ),
                Text(checkboxValue1.toString()),
                Checkbox(
                    value: checkboxValue2,
                    onChanged: (value) {
                      setState(() {
                        checkboxValue2 = value;
                      });
                    }),
                Text(checkboxValue2.toString()),
                Checkbox(
                  value: checkboxValue3,
                  tristate: true,
                  onChanged: (value) {
                    setState(() {
                      checkboxValue3 = value;
                    });
                  },
                ),
                Text(checkboxValue3.toString()),
              ],
            ),
          ),
          BuildMarkdown(radioCheckboxIntro2),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                for (int index = 0; index < 3; index++)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Radio<int>(
                        value: index,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged,
                      ),
                      Text(index.toString()),
                    ],
                  ),
              ],
            ),
          ),
          Center(
            child: Text('选中的值：' + radioValue.toString()),
          ),
          BuildMarkdown('### 开关按钮'),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(switchValue ? '开' : '关'),
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/part/part-text-style.dart';

class TextStylePage extends StatefulWidget {
  @override
  _TextStylePageState createState() => _TextStylePageState();
}

class _TextStylePageState extends State<TextStylePage> {
  TapGestureRecognizer _longPressRecognizer;

  @override
  void initState() {
    super.initState();
    _longPressRecognizer = new TapGestureRecognizer()
      ..onTap = () => print('Tap Here onTap');
  }

  @override
  Widget build(BuildContext context) {
    Routers args = ModalRoute.of(context).settings.arguments;
    print(args);
//    List childrenX = args.children;

    Widget buildInkWellItem(
        {@required Widget child, @required String data, Color color}) {
      return new InkWell(
        onTap: () {
//          Navigator.of(context).pushNamed(
//            childrenX[0].routeName,
//            arguments: CodeArgs(title: childrenX[0].label, markdownData: data),
//          );
        },
        child: Container(
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.only(top: 10.0),
          constraints: BoxConstraints(
            minWidth: double.infinity,
          ),
          color: color,
          child: child,
        ),
      );
    }

    Widget buildTextAlign(String text, TextAlign textAlign) {
      return buildInkWellItem(
        child: Text(text, textAlign: textAlign),
        data: textStyleStr2,
        color: Colors.yellow,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 40.0),
        children: <Widget>[
          buildInkWellItem(child: Text('Hello World!!!'), data: textStyleStr0),
          buildInkWellItem(
            child: Text(
              'Hello World!!!*4' * 4,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            data: textStyleStr1,
          ),
          buildTextAlign("文本的居左对齐方式", TextAlign.left),
          buildTextAlign("文本的居中对齐方式", TextAlign.center),
          buildTextAlign("文本的居右对齐方式", TextAlign.right),
          buildInkWellItem(
            child: Text(
              '字体大小：24，颜色：Colors.red',
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: Text(
              '字体大小快捷设置方式：textScaleFactor: 1.3',
              style: TextStyle(
                color: Colors.red,
              ),
              textScaleFactor: 1.3,
            ),
            data: '字体大小快捷设置方式：textScaleFactor: 1.3',
          ),
          buildInkWellItem(
            child: Text(
              'TextStyle用于指定文本显示的样式如颜色、字体、粗细、背景等',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: 'Courier',
                background: new Paint()..color = Colors.yellow,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Text.rich: ',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Text.rich( TextSpan( children: [ textspan, textspan ] ) )',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      fontSize: 18.0,
                    ),
                    recognizer: _longPressRecognizer,
                  ),
                ],
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: DefaultTextStyle(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('- DefaultTextStyle,文本的样式默认是可以被继承的;'),
                    Text('- 子类文本类组件未指定具体样式时可以使用Widget树中父级设置的默认样式;'),
                    Text(
                      '- 子类的设置自己的样式;',
                      style: TextStyle(
                        inherit: false,
                        color: Colors.blue,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                )),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: const Text(
              '可以在Flutter应用程序中使用不同的字体',
              style: const TextStyle(
                fontFamily: 'MaShanZheng',
                fontSize: 18.0,
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: const Text(
              'Use the font this text.',
              style: const TextStyle(
                fontFamily: 'Orbitron',
                fontSize: 20.0,
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
          buildInkWellItem(
            child: const Text(
              'Use the font this text.',
              style: const TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 34.0,
              ),
            ),
            data: '赞无，后续更新。。。',
          ),
        ],
      ),
    );
  }
}

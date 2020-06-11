import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/common/buildMarkdown.dart';
import 'package:flutter_example_app/part/part-img-icon.dart';

class ImageAndIconPage extends StatefulWidget {
  @override
  _ImageAndIconPageState createState() => _ImageAndIconPageState();
}

class MyIcons {
//  微信
  static const IconData weChart = const IconData(
    0xe61a,
    fontFamily: 'myIcon',
    matchTextDirection: true,
  );
//  微博
  static const IconData weiBo = const IconData(
    0xe73c,
    fontFamily: 'myIcon',
    matchTextDirection: true,
  );
//  QQ
  static const IconData QQ = const IconData(
    0xe80e,
    fontFamily: 'myIcon',
    matchTextDirection: true,
  );

//  支付宝
  static const IconData aliPay = const IconData(
    0xe63b,
    fontFamily: 'myIcon',
    matchTextDirection: true,
  );
}

class _ImageAndIconPageState extends State<ImageAndIconPage> {
  @override
  Widget build(BuildContext context) {
    Routers args = ModalRoute.of(context).settings.arguments;
    var img = AssetImage('assets/images/banner.png');

    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            BuildMarkdown(
              imgIconWidgetIntro,
              B: 0,
            ),
            BuildMarkdown(""" ### 从asset中加载图片 """),
            Container(
              width: 200,
              height: 200,
              child: Image(
                  image: AssetImage("assets/images/banner.png"), width: 100.0),
            ),
            BuildMarkdown(imgIconPart),
            BuildMarkdown(""" ### 从网络中加载图片 """),
            Container(
                width: 200,
                height: 200,
                child: Image.network('https://www.devio.org/img/avatar.png',
                    width: 100.0)),
            BuildMarkdown(imgIconPart2),
            BuildMarkdown(""" ### 参数 """),
            Column(
              children: <Image>[
                Image(
                  image: img,
                  height: 50.0,
                  width: 200.0,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: img,
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,
                ),
                Image(
                  image: img,
                  width: 200.0,
                  height: 50.0,
                  fit: BoxFit.cover,
                ),
                Image(
                  image: img,
                  width: 200.0,
                  height: 50.0,
                  fit: BoxFit.fitWidth,
                ),
                Image(
                  image: img,
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fitHeight,
                ),
                Image(
                  image: img,
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.scaleDown,
                ),
                Image(
                  image: img,
                  height: 50.0,
                  width: 100.0,
                  fit: BoxFit.none,
                ),
                Image(
                  image: img,
                  width: 100.0,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  fit: BoxFit.fill,
                ),
                Image(
                  image: img,
                  width: 100.0,
                  height: 200.0,
                  repeat: ImageRepeat.repeatY,
                ),
              ].map((e) {
                return Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: SizedBox(
                        width: 100,
                        child: e,
                      ),
                    ),
                    Text(
                        e.fit != null ? e.fit.toString() : e.repeat.toString()),
                  ],
                );
              }).toList(),
            ),
            BuildMarkdown(imgIconWidgetIntro2),
            Center(
              child: Text(
                icons,
                style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 34.0,
                    color: Colors.green),
              ),
            ),
            BuildMarkdown(imgIconPart3),
            BuildMarkdown(imgIconWidgetIntro3),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green,
                    size: 34,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green,
                    size: 34,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                    size: 34,
                  ),
                ],
              ),
            ),
            BuildMarkdown(imgIconPart4),
            BuildMarkdown(imgIconWidgetIntro4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  MyIcons.weChart,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  MyIcons.weiBo,
                  color: Colors.redAccent,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  MyIcons.QQ,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  MyIcons.aliPay,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}

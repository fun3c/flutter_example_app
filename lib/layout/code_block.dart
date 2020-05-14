import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../common/nav_data.dart';

class CodeBlock extends StatefulWidget {
  @override
  _CodeBlockState createState() => _CodeBlockState();
}

class _CodeBlockState extends State<CodeBlock> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    CodeArgs args = ModalRoute.of(context).settings.arguments;
    print(args.title);
    return Scaffold(
      appBar: AppBar(
        title: Text('Code' + args.title),
      ),
      body: SafeArea(
        child: Markdown(
          controller: controller,
          selectable: true,
          data: args.markdownData,
          styleSheetTheme: MarkdownStyleSheetBaseTheme.platform,
        ),
      ),
    );
  }
}

//class CodeBlock extends StatelessWidget {
//  final controller = ScrollController();
//
//  static const String _markdownData = """
//# Markdown Example
//Markdown allows you to easily include formatted text, images, and even formatted Dart code in your app.
//
//## Titles
//
//Setext-style
//
//```
//This is an H1
//=============
//
//This is an H2
//-------------
//```
//
//Atx-style
//
//```
//# This is an H1
//
//## This is an H2
//
//###### This is an H6
//```
//
//Select the valid headers:
//
//- [x] `# hello`
//- [ ] `#hello`
//
//## Links
//
//[Google's Homepage][Google]
//
//```
//[inline-style](https://www.google.cn)
//
//[reference-style][Google]
//```
//
//## Images
//
//![Flutter logo](/dart-lang/site-shared/master/src/_assets/image/flutter/icon/64.png)
//
//## Tables
//
//|Syntax                                 |Result                               |
//|---------------------------------------|-------------------------------------|
//|`*italic 1*`                           |*italic 1*                           |
//|`_italic 2_`                           | _italic 2_                          |
//|`**bold 1**`                           |**bold 1**                           |
//|`__bold 2__`                           |__bold 2__                           |
//|`This is a ~~strikethrough~~`          |This is a ~~strikethrough~~          |
//|`***italic bold 1***`                  |***italic bold 1***                  |
//|`___italic bold 2___`                  |___italic bold 2___                  |
//|`***~~italic bold strikethrough 1~~***`|***~~italic bold strikethrough 1~~***|
//|`~~***italic bold strikethrough 2***~~`|~~***italic bold strikethrough 2***~~|
//
//## Styling
//Style text as _italic_, __bold__, ~~strikethrough~~, or `inline code`.
//
//- Use bulleted lists
//- To better clarify
//- Your points
//
//## Code blocks
//Formatted Dart code looks really pretty too:
//
//```
//void main() {
//  runApp(MaterialApp(
//    home: Scaffold(
//      body: Markdown(data: markdownData),
//    ),
//  ));
//}
//```
//
//## Markdown widget
//
//This is an example of how to create your own Markdown widget:
//
//    Markdown(data: 'Hello _world_!');
//
//Enjoy!
//
//[Google]: https://www.google.cn/
//""";
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('code'),
//      ),
//      body: SafeArea(
//          child: Markdown(
//        controller: controller,
//        selectable: true,
//        data: _markdownData,
//      )),
//    );
//  }
//}

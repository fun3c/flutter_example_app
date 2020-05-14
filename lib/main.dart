import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/nav_data.dart';
import 'package:flutter_example_app/layout/code_block.dart';
import 'package:flutter_example_app/pages/base/text-style.dart';
import 'package:flutter_example_app/pages/base_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'base_page': (context) => BasePage(),
        'layout_page': (context) => BasePage(),
        'container_page': (context) => BasePage(),
        'scroll_page': (context) => BasePage(),
        'function_page': (context) => BasePage(),
        'event_page': (context) => BasePage(),
        'animate_page': (context) => BasePage(),
        'custom_page': (context) => BasePage(),
        'http_page': (context) => BasePage(),
        'package_page': (context) => BasePage(),
        'globalization_page': (context) => BasePage(),
        'examples_page': (context) => BasePage(),
        'text-style': (context) => TextStylePage(),
        'text-style-code': (context) => CodeBlock(),
      },
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List comItems;
  initState() {
    super.initState();
    comItems = navList();
  }

  Widget buildContainer(NavItem item) {
    return new InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            item.routeName,
            arguments: item,
          );
        },
        child: new Container(
          alignment: Alignment.center,
          child: Text(
            item.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          decoration: BoxDecoration(
            color: item.bgColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ));
  }

  List buildItemBox() {
    List<Widget> containers = [];
    for (var item in comItems) {
      containers.add(buildContainer(item));
//      containers.add(buildContainer(
//        item['label'],
//        item['bgColor'],
//        item['routeName'],
//      ));
    }
    return containers;
  }

  initContent() {
    return GridView.count(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0, bottom: 0),
      crossAxisCount: 2,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      childAspectRatio: 2,
      children: buildItemBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: initContent(),
      ),
    );
  }
}

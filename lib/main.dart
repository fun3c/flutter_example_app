import 'package:flutter/material.dart';
import 'package:flutter_example_app/routes/routes_main.dart';

import 'common/buildJson.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: buildAppRoutes(),
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
    comItems = baseRoutes;
  }

  Widget buildContainer(Routers item) {
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
            item.title,
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

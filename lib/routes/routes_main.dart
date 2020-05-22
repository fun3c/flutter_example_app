import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import 'package:flutter_example_app/routes/route_animate.dart';
import 'package:flutter_example_app/routes/route_base.dart';
import 'package:flutter_example_app/routes/route_container.dart';
import 'package:flutter_example_app/routes/route_custom.dart';
import 'package:flutter_example_app/routes/route_event.dart';
import 'package:flutter_example_app/routes/route_example.dart';
import 'package:flutter_example_app/routes/route_function.dart';
import 'package:flutter_example_app/routes/route_glob.dart';
import 'package:flutter_example_app/routes/route_http.dart';
import 'package:flutter_example_app/routes/route_layout.dart';
import 'package:flutter_example_app/routes/route_package.dart';
import 'package:flutter_example_app/routes/route_scroll.dart';

final List baseRoutes = [
  routeBase(),
  routeLayout(),
  routeContainer(),
  routeScroll(),
  routeFunction(),
  routeEvent(),
  routeAnimate(),
  routeCustom(),
  routeHttp(),
  routePackage(),
  routeGlob(),
  routeExample(),
];

var appRoutes = <String, WidgetBuilder>{};

void _expandRoutes(List routers) {
  for (Routers item in routers) {
    appRoutes[item.routeName] = (context) => item.component;
    if (item.children != null) _expandRoutes(item.children);
  }
}

Map buildAppRoutes() {
  _expandRoutes(baseRoutes);
  return appRoutes;
}

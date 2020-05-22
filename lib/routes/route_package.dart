import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routePackage() {
  return Routers(
    title: '包与插件',
    bgColor: Colors.blueGrey,
    routeName: 'package_page',
    component: BasePage(),
  );
}

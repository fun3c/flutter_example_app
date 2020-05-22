import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeExample() {
  return Routers(
    title: '实例篇',
    bgColor: Colors.black87,
    routeName: 'example_page',
    component: BasePage(),
  );
}

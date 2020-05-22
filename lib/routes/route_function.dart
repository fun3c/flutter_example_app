import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeFunction() {
  return Routers(
    title: '功能型组件',
    bgColor: Colors.black45,
    routeName: 'function_page',
    component: BasePage(),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeCustom() {
  return Routers(
    title: '自定义组件',
    bgColor: Colors.cyan,
    routeName: 'custom_page',
    component: BasePage(),
  );
}

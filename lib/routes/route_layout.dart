import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeLayout() {
  return Routers(
    title: '布局类组件',
    bgColor: Colors.blue,
    routeName: 'layout_page',
    component: BasePage(),
  );
}

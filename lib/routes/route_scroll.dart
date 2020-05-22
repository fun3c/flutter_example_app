import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeScroll() {
  return Routers(
    title: '可滚动组件',
    bgColor: Colors.deepOrangeAccent,
    routeName: 'scroll_page',
    component: BasePage(),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeGlob() {
  return Routers(
    title: '国际化',
    bgColor: Colors.purple,
    routeName: 'glob_page',
    component: BasePage(),
  );
}

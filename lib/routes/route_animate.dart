import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeAnimate() {
  return Routers(
    title: '动画',
    bgColor: Colors.brown,
    routeName: 'animate_page',
    component: BasePage(),
  );
}

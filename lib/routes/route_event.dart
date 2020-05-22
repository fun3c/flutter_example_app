import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeEvent() {
  return Routers(
    title: '事件与通知',
    bgColor: Colors.deepPurple,
    routeName: 'event_page',
    component: BasePage(),
  );
}

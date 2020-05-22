import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeContainer() {
  return Routers(
    title: '容器类组件',
    bgColor: Colors.amber,
    routeName: 'container_page',
    component: BasePage(),
  );
}

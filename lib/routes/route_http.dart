import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';

import '../pages/base_page.dart';

Routers routeHttp() {
  return Routers(
    title: '文件操作与网络请求',
    bgColor: Colors.pink,
    routeName: 'http_page',
    component: BasePage(),
  );
}

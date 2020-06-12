import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/buildJson.dart';
import 'package:flutter_example_app/pages/base/button_page.dart';
import 'package:flutter_example_app/pages/base/img_icon_page.dart';
import 'package:flutter_example_app/pages/base/radio_checkbox_page.dart';

import '../pages/base/base_main.dart';
import '../pages/base/text-style.dart';
import '../pages/base_page.dart';

Routers routeBase() {
  return Routers(
    title: '基础组件',
    bgColor: Colors.green,
    routeName: 'base_page',
    component: BaseContent(),
    children: [
      Routers(
        title: '文本，样式',
        routeName: 'text-style',
        component: TextStylePage(),
      ),
      Routers(
        title: '按钮',
        routeName: 'button_page',
        component: ButtonPage(),
      ),
      Routers(
        title: '图片和Icon',
        routeName: 'img_icon_page',
        component: ImageAndIconPage(),
      ),
      Routers(
        title: '单选和复选',
        routeName: 'radio-checkbox',
        component: RadioCheckboxPage(),
      ),
      Routers(
        title: '输入框和表单',
        routeName: 'input-form',
        component: BasePage(),
      ),
      Routers(
        title: '进度条指示',
        routeName: 'progressbar',
        component: BasePage(),
      ),
    ],
  );
}

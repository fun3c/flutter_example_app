import 'package:flutter/material.dart';

//json

/*
{
  "label": "",
  "bgColor": "",
  "routeName": "",
  "children": [
    {
      "label": "",
      "routeName": "",
      "children": [
        {
          "label": "",
          "routeName": ""
        }
      ]
    }
  ]
}
 */

class NavItem {
  final Color bgColor;
  final List<Children> children;
  final String label;
  final String routeName;

  NavItem({this.bgColor, this.children, this.label, this.routeName});

  factory NavItem.fromJson(Map<String, dynamic> json) {
    return NavItem(
      bgColor: json['bgColor'],
      children: json['children'] != null
          ? (json['children'] as List).map((i) => Children.fromJson(i)).toList()
          : null,
      label: json['label'],
      routeName: json['routeName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bgColor'] = this.bgColor;
    data['label'] = this.label;
    data['routeName'] = this.routeName;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Children {
  final List<ChildrenX> children;
  final String label;
  final String routeName;

  Children({this.children, this.label, this.routeName});

  factory Children.fromJson(Map<String, dynamic> json) {
    return Children(
      children: json['children'] != null
          ? (json['children'] as List)
              .map((i) => ChildrenX.fromJson(i))
              .toList()
          : null,
      label: json['label'],
      routeName: json['routeName'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['routeName'] = this.routeName;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ChildrenX {
  final String label;
  final String routeName;

  ChildrenX(this.routeName, [this.label = '详情页']);

  factory ChildrenX.fromJson(Map<String, dynamic> json) {
    return ChildrenX(json['routeName'], json['label']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['routeName'] = this.routeName;
    return data;
  }
}

class CodeArgs {
  String markdownData;
  String title;

  CodeArgs({this.markdownData, this.title});

  factory CodeArgs.fromJson(Map<String, dynamic> json) {
    return CodeArgs(
      markdownData: json['markdownData'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['markdownData'] = this.markdownData;
    data['title'] = this.title;
    return data;
  }
}

List navList() {
  List arr = [
    NavItem(
      label: '基础组件',
      bgColor: Colors.green,
      routeName: 'base_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
          children: [
            ChildrenX('text-style-code'),
          ],
        ),
        Children(
          label: '按钮',
          routeName: 'button',
        ),
        Children(
          label: '图片和Icon',
          routeName: 'img-icon',
        ),
        Children(
          label: '单选和复选',
          routeName: 'radio-checkbox',
        ),
        Children(
          label: '输入框和表单',
          routeName: 'input-form',
        ),
        Children(
          label: '进度条指示',
          routeName: 'progressbar',
        ),
      ],
    ),
    NavItem(
      label: '布局类组件',
      bgColor: Colors.blue,
      routeName: 'layout_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '容器类组件',
      bgColor: Colors.amber,
      routeName: 'container_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '可滚动组件',
      bgColor: Colors.deepOrangeAccent,
      routeName: 'scroll_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '功能型组件',
      bgColor: Colors.black45,
      routeName: 'function_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '事件与通知',
      bgColor: Colors.deepPurple,
      routeName: 'event_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '动画',
      bgColor: Colors.brown,
      routeName: 'animate_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '自定义组件',
      bgColor: Colors.cyan,
      routeName: 'custom_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '文件操作与网络请求',
      bgColor: Colors.pink,
      routeName: 'http_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '包与插件',
      bgColor: Colors.blueGrey,
      routeName: 'package_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '包与插件',
      bgColor: Colors.blueGrey,
      routeName: 'package_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '国际化',
      bgColor: Colors.purple,
      routeName: 'globalization_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
    NavItem(
      label: '实例篇',
      bgColor: Colors.black87,
      routeName: 'examples_page',
      children: [
        Children(
          label: '文本，样式',
          routeName: 'text-style',
        ),
      ],
    ),
  ];

  return arr;
}

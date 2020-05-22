import 'package:flutter/material.dart';

class Routers {
  final Color bgColor;
  final List<Routers> children;
  final Widget component;
  final Widget icon;
  final String routeName;
  final String title;

  Routers(
      {this.bgColor,
      this.children,
      this.component,
      this.icon,
      this.routeName,
      this.title});

  factory Routers.fromJson(Map<String, dynamic> json) {
    return Routers(
      bgColor: json['bgColor'],
      children: json['children'] != null
          ? (json['children'] as List).map((i) => Routers.fromJson(i)).toList()
          : null,
      component: json['component'],
      icon: json['icon'],
      routeName: json['routeName'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bgColor'] = this.bgColor;
    data['component'] = this.component;
    data['icon'] = this.icon;
    data['routeName'] = this.routeName;
    data['title'] = this.title;
    if (this.children != null) {
      data['children'] = this.children.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

//class Children {
//  final Color bgColor;
//  final Widget component;
//  final Widget icon;
//  final String routeName;
//  final String title;
//
//  Children(
//      {this.bgColor, this.component, this.icon, this.routeName, this.title});
//
//  factory Children.fromJson(Map<String, dynamic> json) {
//    return Children(
//      bgColor: json['bgColor'],
//      component: json['component'],
//      icon: json['icon'],
//      routeName: json['routeName'],
//      title: json['title'],
//    );
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['bgColor'] = this.bgColor;
//    data['component'] = this.component;
//    data['icon'] = this.icon;
//    data['routeName'] = this.routeName;
//    data['title'] = this.title;
//    return data;
//  }
//}

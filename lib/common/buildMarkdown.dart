import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class BuildMarkdown extends StatelessWidget {
  final String data;
  final double L;
  final double R;
  final double T;
  final double B;

  BuildMarkdown(this.data,
      {this.L = 20.0, this.R = 20.0, this.B = 20.0, this.T = 20.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: L, right: R, top: T, bottom: B),
      child: MarkdownBody(
        data: data,
      ),
    );
  }
}

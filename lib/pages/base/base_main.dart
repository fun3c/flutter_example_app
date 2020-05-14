import 'package:flutter/material.dart';
import 'package:flutter_example_app/common/nav_data.dart';

class BaseContent extends StatefulWidget {
  @override
  _BaseContentState createState() => _BaseContentState();
}

class _BaseContentState extends State<BaseContent> {
  List buildExpandedItem(List children) {
    List<Widget> expandedItem = [];
    for (var item in children) {
      expandedItem.add(
        new InkWell(
          onTap: () {
//            print(item.routeName);
            Navigator.of(context).pushNamed(
              item.routeName,
              arguments: item,
            );
          },
          child: Container(
            padding: EdgeInsets.all(14.0),
            width: double.infinity,
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 11,
                  child: Container(
                    child: Text(
                      item.label,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                      size: 18.0,
                    ),
                  ),
                ),
              ],
            ),
//            color: Colors.orange,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
        ),
      );
    }
    return expandedItem;
  }

  @override
  Widget build(BuildContext context) {
    NavItem args = ModalRoute.of(context).settings.arguments;
    List items = args.children;
    return Center(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: buildExpandedItem(items),
        ),
      ),
    );
  }
}

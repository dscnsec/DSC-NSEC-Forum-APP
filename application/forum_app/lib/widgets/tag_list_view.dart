import 'package:flutter/material.dart';

// * data import
import 'package:forum_app/data/tags.dart';

List<Widget> buildTagWidgetListView(List<Tag> tagList) {
  return tagList.map<Widget>((item) {
    if (item.children.isEmpty)
      return ListTile(
        title: Text(item.tagName),
        leading: item.icon,
        contentPadding: EdgeInsets.only(left: 24.0),
      );
    else {
      return Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: ExpansionTile(
          leading: item.icon,
          title: Text(item.tagName),
          children: buildTagWidgetListView(item.children),
        ),
      );
    }
  }).toList();
}

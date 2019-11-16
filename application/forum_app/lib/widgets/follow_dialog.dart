import 'package:flutter/material.dart';

void showFollowDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Radio<int>(
                value: 2,
              ),
              title: Text('Notify only when mentioned'),
            ),
            ListTile(
              leading: Radio<int>(
                value: 1,
              ),
              title: Text('Notify all discussions'),
            ),
            ListTile(
              leading: Radio<int>(
                value: 0,
              ),
              title: Text('Never notify'),
            ),
          ],
        ),
      );
    },
  );
}

//TODO: Implement option handling

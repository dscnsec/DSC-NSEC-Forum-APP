import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Notifications'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Notification settings',
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Notifications'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Dismiss all notifications',
        child: Icon(Icons.clear_all),
        onPressed: () {},
      ),
    );
  }
}

//TODO: Implement layout and logic
import 'package:flutter/material.dart';

class StartDiscussionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Start a discussion'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Drafts',
            icon: Icon(Icons.insert_drive_file),
            onPressed: () {
              //TODO: Implement drafts logic here
            },
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text('Start a discussion'),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: null,
            mini: true,
            tooltip: 'Save as draft',
            child: Icon(Icons.save),
            onPressed: () {
              //TODO: Implement save as draft
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          FloatingActionButton(
            tooltip: 'Post Discussion',
            child: Icon(Icons.send),
            onPressed: () {
              //TODO: Implement posting in the app
            },
          ),
        ],
      ),
    );
  }
}
//TODO: Implement layout and logic

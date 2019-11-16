import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Forum FAQ'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('FAQ'),
        ),
      ),
    );
  }
}

//TODO: Implement layout

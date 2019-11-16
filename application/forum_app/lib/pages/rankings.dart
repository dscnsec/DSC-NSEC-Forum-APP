import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Rankings'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Rankings'),
        ),
      ),
    );
  }
}
//TODO: Implement layout and logic

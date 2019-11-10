import 'package:flutter/material.dart';

// * pages import
import 'package:forum_app/pages/home.dart';

// * ui import
import 'package:forum_app/ui/themes.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DSC NSEC Forum',
      theme: defaultTheme(),
      home: Home(),
    );
  }
}

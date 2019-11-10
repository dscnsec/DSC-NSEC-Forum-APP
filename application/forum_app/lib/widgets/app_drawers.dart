import 'package:flutter/material.dart';

// * external packages import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// * data import
import 'package:forum_app/data/static_data.dart';

// * pages import
import 'package:forum_app/pages/forum_faq.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

class AppLeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Text('User Left Drawer Here'),
      ),
    );
  }
}

class AppRightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Google Sans'),
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                  8.0, MediaQuery.of(context).padding.top, 8.0, 8.0),
              child: Text(
                hiThere,
                style: Theme.of(context)
                    .textTheme
                    .display1
                    .copyWith(color: Colors.white, fontFamily: 'Google Sans'),
              ),
              color: googleBlue,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.trophy),
              title: Text('Rankings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Forum FAQ'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FaqPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
            ),
          ],
        ),
      ),
    );
  }
}

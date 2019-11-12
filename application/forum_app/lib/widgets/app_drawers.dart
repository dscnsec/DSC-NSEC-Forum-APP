import 'package:flutter/material.dart';

// * external packages import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// * data import
import 'package:forum_app/data/static_data.dart';
import 'package:forum_app/data/tags.dart';

// * pages import
import 'package:forum_app/pages/forum_faq.dart';
import 'package:forum_app/pages/login.dart';
import 'package:forum_app/pages/rankings.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

// * utils import
import 'package:forum_app/utils/url_launcher.dart';
import 'package:forum_app/widgets/tag_list_view.dart';

class AppLeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: Theme.of(context).copyWith(
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Google Sans'),
        ),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    DrawerHeader(
                      padding: EdgeInsets.zero,
                      margin: EdgeInsets.zero,
                      child: Placeholder(),
                    ),
                    Container(
                      color: googleBlue,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'Welcome, Guest',
                        style: Theme.of(context).textTheme.headline.copyWith(
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Google Sans'),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Log in'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Following'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Settings'),
                    ),
                    ExpansionTile(
                      initiallyExpanded: true,
                      leading: Icon(Icons.label),
                      title: Text('Tags'),
                      children: buildTagWidgetListView(tagList),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppRightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: Theme.of(context).copyWith(
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Google Sans'),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(
                  8.0, MediaQuery.of(context).padding.top, 8.0, 8.0),
              child: Text(
                introUser,
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: Colors.white, fontFamily: 'Google Sans'),
              ),
              color: googleBlue,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.trophy),
              title: Text('Rankings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => RankingPage()));
              },
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
              onTap: () => launchUrl(dscNsecUrl),
            ),
          ],
        ),
      ),
    );
  }
}

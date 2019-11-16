import 'package:flutter/material.dart';

// * external packages import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

// * data import
import 'package:forum_app/data/static_data.dart';
import 'package:forum_app/data/tags.dart';

// * states import
import 'package:forum_app/states/login_state.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

// * utils import
import 'package:forum_app/utils/url_launcher.dart';
import 'package:forum_app/widgets/tag_list_view.dart';

double _appDrawerIconSize = 30.0;

class AppLeftDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Theme(
        data: Theme.of(context).copyWith(
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Google Sans'),
            iconTheme:
                Theme.of(context).iconTheme.copyWith(size: _appDrawerIconSize)),
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
                    child: AppLeftDrawerGreet(),
                  ),
                  AppLeftDrawerUserButton(),
                  if (Provider.of<LoginState>(context).isLoggedin)
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text('Following'),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, '/userprofilefollowing');
                      },
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
    );
  }
}

class AppLeftDrawerUserButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var loginState = Provider.of<LoginState>(context);
    return ListTile(
      leading: (loginState.isLoggedin)
          ? CircleAvatar(radius: _appDrawerIconSize / 2)
          : Icon(Icons.person),
      title: Text((loginState.isLoggedin) ? 'You' : 'Log in'),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(
            context, (loginState.isLoggedin) ? '/userprofile' : '/login');
      },
    );
  }
}

class AppLeftDrawerGreet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      (Provider.of<LoginState>(context).isLoggedin)
          ? 'Welcome, Default User'
          : 'Welcome, Guest',
      style: Theme.of(context).textTheme.headline.copyWith(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontFamily: 'Google Sans'),
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
          iconTheme:
              Theme.of(context).iconTheme.copyWith(size: _appDrawerIconSize),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: AppRightDrawerIntro(),
              color: googleBlue,
            ),
            ListTile(
              leading: Icon(FontAwesomeIcons.trophy),
              title: Text('Rankings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/rankings');
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Forum FAQ'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/faq');
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

class AppRightDrawerIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      (Provider.of<LoginState>(context).isLoggedin) ? introUser : introGuest,
      style: Theme.of(context)
          .textTheme
          .headline
          .copyWith(color: Colors.white, fontFamily: 'Google Sans'),
    );
  }
}

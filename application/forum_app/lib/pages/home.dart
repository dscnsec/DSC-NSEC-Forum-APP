import 'package:flutter/material.dart';

// * state import
import 'package:forum_app/states/sortmode_posts_state.dart';

// * utils import
import 'package:forum_app/utils/search_delegates.dart';

// * widget import
import 'package:forum_app/widgets/app_drawers.dart';
import 'package:forum_app/widgets/overflow_menu.dart';

// * External packages import
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PostsSortModeState>(
      builder: (_) => PostsSortModeState(),
      child: Scaffold(
        drawer: AppLeftDrawer(),
        endDrawer: AppRightDrawer(),
        appBar: AppBar(
          title: HomeTitle(),
          actions: <Widget>[
            PostSortModeMenu(),
            IconButton(
              tooltip: 'Search posts',
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: SearchPost()),
            ),
            if (MediaQuery.of(context).size.width > 360.0)
              IconButton(
                tooltip: 'Notifications',
                icon: Icon(Icons.notifications),
                onPressed: () => Navigator.pushNamed(context, '/notifications'),
              ),
            HomeOverflowMenu(),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: FlatButton(
                child: Text('Home'),
                onPressed: () => Navigator.pushNamed(context, '/posts')),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Start a discussion',
          child: Icon(Icons.create),
          onPressed: () => Navigator.pushNamed(context, '/startdiscussion'),
        ),
      ),
    );
  }
}

class HomeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<PostsSortModeState>(context).getCurrentPostSort);
  }
}

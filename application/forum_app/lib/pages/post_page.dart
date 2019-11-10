import 'package:flutter/material.dart';

// * state import
import 'package:forum_app/states/sortmode_comments_state.dart';

// * utils import
import 'package:forum_app/utils/search_delegates.dart';

// * widgets import
import 'package:forum_app/widgets/overflow_menu.dart';

// * External packages import
import 'package:provider/provider.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CommentsSortModeState>(
      builder: (_) => CommentsSortModeState(),
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          actions: <Widget>[
            CommentsSortModeMenu(),
            IconButton(
              tooltip: 'Search comment',
              icon: Icon(Icons.search),
              onPressed: () =>
                  showSearch(context: context, delegate: SearchComment()),
            ),
            IconButton(
              tooltip: 'Follow this post...',
              icon: Icon(Icons.star_border),
              onPressed: () {},
            ),
            PostOverflowMenu(),
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Text('Posts'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Reply to this post',
          child: Icon(Icons.reply),
          onPressed: () {},
        ),
      ),
    );
  }
}

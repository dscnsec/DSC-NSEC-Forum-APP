import 'package:flutter/material.dart';

// * state import
import 'package:forum_app/states/sortmode_comments_state.dart';
import 'package:forum_app/states/sortmode_posts_state.dart';

// * external packages import
import 'package:provider/provider.dart';

class OverflowMenu extends StatelessWidget {
  final IconData icon;
  final Function onSelect;
  final List<String> choices;
  final String tooltip;
  OverflowMenu({this.icon, this.choices, this.onSelect, this.tooltip});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: this.tooltip ?? 'More options',
      icon: Icon(this.icon ?? Icons.more_vert),
      onSelected: this.onSelect,
      itemBuilder: (context) {
        return choices
            .map((String option) => PopupMenuItem<String>(
                  value: option,
                  child: Text(
                    option,
                    style: Theme.of(context)
                        .textTheme
                        .subhead
                        .copyWith(fontFamily: 'Google Sans'),
                  ),
                ))
            .toList();
      },
    );
  }
}

class PostSortModeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sortState = Provider.of<PostsSortModeState>(context);
    return OverflowMenu(
      tooltip: 'Sort mode',
      icon: Icons.sort,
      choices: sortState.getPostSortChoices,
      onSelect: (item) => sortState.changeSort(item),
    );
  }
}

class CommentsSortModeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sortState = Provider.of<CommentsSortModeState>(context);
    return OverflowMenu(
      tooltip: 'Sort mode',
      icon: Icons.sort,
      choices: sortState.getPostSortChoices,
      onSelect: (item) => sortState.changeSort(item),
    );
  }
}

class HomeOverflowMenu extends StatelessWidget {
  final List<String> choicesFromHome = [
    'Mark all as read',
    'About Forum',
  ];
  void _selectFromHome(BuildContext context, String item) {
    switch (item) {
      case 'About Forum':
        Scaffold.of(context).openEndDrawer();
        break;
      case 'Mark all as read':
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('All posts marked as read.'),
        ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return OverflowMenu(
      choices: this.choicesFromHome,
      onSelect: (item) => this._selectFromHome(context, item),
    );
  }
}

class PostOverflowMenu extends StatelessWidget {
  final List<String> choicesFromPost = [
    'Share post',
    'Flag post',
    'Collapse all replies',
  ];
  void _selectFromPost(BuildContext context, String item) {}

  @override
  Widget build(BuildContext context) {
    return OverflowMenu(
      choices: this.choicesFromPost,
      onSelect: (item) => this._selectFromPost(context, item),
    );
  }
}

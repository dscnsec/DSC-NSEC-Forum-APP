import 'package:flutter/material.dart';

// * pages import
import 'package:forum_app/pages/user_profile/user_profile_export_all.dart';

class UserProfileRoot extends StatelessWidget {
  final bool jumpToFollowing;
  UserProfileRoot({this.jumpToFollowing = false});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: (this.jumpToFollowing) ? 4 : 0,
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          title: Text('You'),
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(child: Text('Overview')),
              Tab(child: Text('Posts')),
              Tab(child: Text('Discussions')),
              Tab(child: Text('Mentions')),
              Tab(child: Text('Following')),
              Tab(child: Text('Upvoted')),
              Tab(child: Text('Downvoted')),
              Tab(child: Text('History')),
              Tab(child: Text('Blocklist')),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            UserProfileOverview(),
            UserProfilePosts(),
            UserProfileDiscussions(),
            UserProfileMentions(),
            UserProfileFollowing(),
            UserProfileUpvoted(),
            UserProfileDownvoted(),
            UserProfileHistory(),
            UserProfileBlocklist(),
          ],
        ),
      ),
    );
  }
}
//TODO: Implement layout and logic

import 'package:flutter/material.dart';

// * pages import
import 'package:forum_app/pages/user_profile/user_profile_export_all.dart';

class UserProfileRoot extends StatefulWidget {
  final bool jumpToFollowing;
  UserProfileRoot({this.jumpToFollowing = false});

  @override
  _UserProfileRootState createState() => _UserProfileRootState();
}

class _UserProfileRootState extends State<UserProfileRoot>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<Widget> userProfileTabs = [
    Tab(child: Text('Overview')),
    Tab(child: Text('Posts')),
    Tab(child: Text('Discussions')),
    Tab(child: Text('Mentions')),
    Tab(child: Text('Following')),
    Tab(child: Text('Upvoted')),
    Tab(child: Text('Downvoted')),
    Tab(child: Text('History')),
    Tab(child: Text('Blocklist')),
  ];
  @override
  void initState() {
    this._tabController = TabController(
        vsync: this,
        length: userProfileTabs.length,
        initialIndex: (widget.jumpToFollowing) ? 4 : 0)
      ..addListener(() {
        setState(() {
          //Rebuild and change Appbar and FAB depending upon the tab controller index
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    this._tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('You'),
        actions: <Widget>[
          if (_tabController.index != 0)
            IconButton(
              tooltip: 'Sort Mode',
              icon: Icon(Icons.sort),
              onPressed: () {},
            ),
          IconButton(
            tooltip: 'Share profile',
            icon: Icon(Icons.share),
            onPressed: () {
              //TODO: Implement share sheet here
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: userProfileTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
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
      floatingActionButton: (_tabController.index == 0 ||
              _tabController.index == 8)
          ? FloatingActionButton(
              child: Icon((_tabController.index == 0) ? Icons.edit : Icons.add),
              onPressed: () {
                //TODO: Implement FAB logic
              },
            )
          : null,
    );
  }
}
//TODO: Implement layout and logic

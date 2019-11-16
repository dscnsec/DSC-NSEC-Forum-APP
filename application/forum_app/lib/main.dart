import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forum_app/pages/forum_faq.dart';

// * pages import
import 'package:forum_app/pages/home.dart';
import 'package:forum_app/pages/login.dart';
import 'package:forum_app/pages/notifications.dart';
import 'package:forum_app/pages/post_page.dart';
import 'package:forum_app/pages/rankings.dart';
import 'package:forum_app/pages/signup.dart';
import 'package:forum_app/pages/start_discussion.dart';
import 'package:forum_app/pages/user_profile_root.dart';

// * states import
import 'package:forum_app/states/login_state.dart';

// * ui import
import 'package:forum_app/ui/themes.dart';

// * external packages import
import 'package:provider/provider.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: defaultTheme().primaryColor),
    );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginState>(
          builder: (_) => LoginState(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DSC NSEC Forum',
        theme: defaultTheme(),
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/posts': (context) => PostPage(),
          '/notifications': (context) => NotificationsPage(),
          '/startdiscussion': (context) => StartDiscussionPage(),
          '/signup': (context) => SignUpPage(),
          '/login': (context) => LoginPage(),
          '/rankings': (context) => RankingPage(),
          '/faq': (context) => FaqPage(),
          '/userprofile': (context) => UserProfileRoot(),
          '/userprofilefollowing': (context) =>
              UserProfileRoot(jumpToFollowing: true),
        },
      ),
    );
  }
}

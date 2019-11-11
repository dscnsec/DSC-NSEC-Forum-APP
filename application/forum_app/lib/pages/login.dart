import 'package:flutter/material.dart';

// * data import
import 'package:forum_app/data/static_data.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Login'),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Text(
                'Welcome to DSC NSEC Forum!',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: googleBlue, fontFamily: 'Google Sans'),
              ),
            ),
            Text(
              introGuest,
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('User Text field here'),
                Text('Password text field here'),
                FlatButton.icon(
                  icon: Icon(Icons.exit_to_app),
                  label: Text('CONTINUE'),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

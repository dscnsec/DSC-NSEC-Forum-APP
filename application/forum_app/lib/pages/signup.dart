import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// * External packages import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

// * states import
import 'package:forum_app/states/login_state.dart';

// * widgets import
import 'package:forum_app/widgets/app_textfield.dart';
import 'package:forum_app/widgets/login_intro.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Sign up'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              LoginIntro(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              AppTextfield(labelText: 'Username'),
              AppTextfield(labelText: 'Email'),
              AppTextfield(labelText: 'Password'),
              //TODO: Implement input handling
              FlatButton.icon(
                icon: Icon(Icons.exit_to_app),
                label: Text('CONTINUE'),
                onPressed: () {
                  Provider.of<LoginState>(context).login();
                  Navigator.pop(context);
                },
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context).textTheme.body1,
                  children: <TextSpan>[
                    TextSpan(text: 'Already have an account? '),
                    TextSpan(
                      text: 'Log In.',
                      style: Theme.of(context).textTheme.subhead.copyWith(
                            color: Colors.blue,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/login');
                        },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              FlatButton.icon(
                icon: Icon(FontAwesomeIcons.google),
                label: Text('SIGN UP WITH GOOGLE'),
                onPressed: () {
                  //TODO: Implement login option
                },
              ),
              FlatButton.icon(
                icon: Icon(FontAwesomeIcons.github),
                label: Text('SIGN UP WITH GITHUB'),
                onPressed: () {
                  //TODO: Implement login option
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

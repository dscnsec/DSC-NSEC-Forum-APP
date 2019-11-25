import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// * data import
import 'package:forum_app/data/static_data.dart';

// * ui import
import 'package:forum_app/ui/colors.dart';

// * utils import
import 'package:forum_app/utils/url_launcher.dart';

class LoginIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            introGuest,
            textAlign: TextAlign.justify,
          ),
        ),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: Theme.of(context).textTheme.body1,
            children: <TextSpan>[
              TextSpan(text: 'Make sure to read the '),
              TextSpan(
                  text: 'account activation guide.',
                  style: Theme.of(context)
                      .textTheme
                      .body2
                      .copyWith(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchUrl(accActivationGuide))
            ],
          ),
        ),
      ],
    );
  }
}

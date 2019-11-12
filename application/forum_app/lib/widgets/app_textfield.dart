import 'package:flutter/material.dart';

class AppTextfield extends StatefulWidget {
  final String labelText;
  final TextEditingController _controller = TextEditingController();
  final String suffixButtonText;
  AppTextfield({this.labelText, this.suffixButtonText});
  @override
  _AppTextfieldState createState() => _AppTextfieldState();
}

class _AppTextfieldState extends State<AppTextfield> {
  @override
  void dispose() {
    widget._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: widget._controller,
        decoration: InputDecoration(
          suffixIcon: (widget.suffixButtonText == null)
              ? SizedBox.shrink()
              : FlatButton(
                  child: Text(
                    widget.suffixButtonText,
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: Theme.of(context).accentColor),
                  ),
                  onPressed: () {},
                ),
          labelText: this.widget.labelText,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

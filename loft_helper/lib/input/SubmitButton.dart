import 'package:flutter/material.dart';
import 'package:loft_helper/styles/Colors.dart';

class SubmitButton extends StatefulWidget {
  final String submitLabel;
  final VoidCallback submitCallback;

  SubmitButton(this.submitLabel, this.submitCallback);

  @override
  State<StatefulWidget> createState() => _SubmitButton();
}

class _SubmitButton extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: new EdgeInsets.all(16.0),
      color: primaryColor,
      child: Text(
        widget.submitLabel.toUpperCase(),
        style: TextStyle(fontSize: 12, color: white),
      ),
      onPressed: () {
        widget.submitCallback();
      },
    );
  }
}
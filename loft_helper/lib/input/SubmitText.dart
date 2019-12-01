import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/styles/Colors.dart';

import '../CONSTS.dart';

class SubmitText extends StatefulWidget {
  final String inputName;
  final String submitLabel;
  final String hintLabel;
  final ValueChanged<String> onFieldSubmittedCallback;

  SubmitText({
    this.inputName,
    this.submitLabel,
    this.hintLabel,
    this.onFieldSubmittedCallback,
  });

  @override
  State<StatefulWidget> createState() => _SubmitText();
}

class _SubmitText extends State<SubmitText> {
  final _formKey = GlobalKey<FormState>();

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final inputText = TextFormField(
      controller: myController,
      validator: (value) {
        if (value.isEmpty) {
          return PREENCHA_ESSE_CAMPO;
        }
        return null;
      },
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: new EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        labelStyle: TextStyle(fontSize: 16, color: mediumGrey),
        hintStyle: TextStyle(color: hintColor),
        hintText: widget.hintLabel,
        border: OutlineInputBorder(),
      ),
    );
    return Form(
      key: _formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: inputText,
          ),
          Expanded(
              child: new SubmitButton(widget.submitLabel, () {
            if (_formKey.currentState.validate()) {
              // Retrieve the text the that user has entered by using the
              // TextEditingController.
              widget.onFieldSubmittedCallback(myController.text);
            }
          }))
        ],
      ),
    );
  }
}

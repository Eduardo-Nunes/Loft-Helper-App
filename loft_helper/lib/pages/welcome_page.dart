import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitText.dart';
import 'package:loft_helper/styles/Dimens.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: paddingTop,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            appLogoImage,
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 24.0),
              child: Image.asset(
                IMAGE_4,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
                padding:
                    new EdgeInsets.symmetric(vertical: 24.0, horizontal: 48.0),
                child: Text(
                  WELCOME_TITLE,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: titleStyle,
                  maxLines: 2,
                )),
            Padding(
                padding: new EdgeInsets.symmetric(horizontal: 48.0),
                child: Text(
                  WELCOME_MESSAGE,
                  textAlign: TextAlign.center,
                  style: messageStyle,
                )),
            Padding(
              padding: new EdgeInsets.symmetric(horizontal: 48.0, vertical: 24),
              child: new SubmitText(
                  inputName: USER_NAME_HINT,
                  submitLabel: USER_NAME_SUBMIT_LABEL,
                  hintLabel: USER_NAME_HINT,
                  onFieldSubmittedCallback: (String text) {
                    return showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Text(text),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

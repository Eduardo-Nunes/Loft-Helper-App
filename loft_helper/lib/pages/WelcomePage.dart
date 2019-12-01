import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitText.dart';
import 'package:loft_helper/pages/HelperContainer.dart';
import 'package:loft_helper/pages/UserCounterPage.dart';
import 'package:loft_helper/pages/WishPage.dart';
import 'package:loft_helper/styles/Colors.dart';
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
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 48.0, vertical: 24),
              color: white,
              child: new SubmitText(
                  inputName: USER_NAME_HINT,
                  submitLabel: USER_NAME_SUBMIT_LABEL,
                  hintLabel: USER_NAME_HINT,
                  onFieldSubmittedCallback: (String text) {
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
                          return new HelperContainer(
                            innerChild: new WishPage(userName: text),
                            image: IMAGE_5,
                          );
                        })
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

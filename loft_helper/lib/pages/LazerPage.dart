import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'WishPage.dart';

class LazerPage extends StatefulWidget {
  final HelperRequest request;

  const LazerPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LazerPage();
}

class _LazerPage extends State<LazerPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: new EdgeInsets.only(
                top: 24.0, bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              LAZER_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              LAZER_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
          child: SubmitButton(SIM, () {}),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 12.0, bottom: 100.0),
          child: SubmitButton(NAO, () {}),
        )
      ],
    );
  }
}

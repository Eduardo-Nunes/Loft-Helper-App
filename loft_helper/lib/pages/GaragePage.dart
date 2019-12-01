import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';

class GaragePage extends StatefulWidget {
  final HelperRequest request;

  const GaragePage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _GaragePage();
}

class _GaragePage extends State<GaragePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: new EdgeInsets.only(
                top: 24.0, bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              GARAGE_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              GARAGE_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 310.0,
          alignment: Alignment.center,
          padding: new EdgeInsets.only(top: 12.0, bottom: 100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: new EdgeInsets.all(4),
                  child: SubmitButton(ZERO_GARAGE, () {
                    goToMobiliaPage(0);
                  })),
              Container(
                  margin: new EdgeInsets.all(4),
                  child: SubmitButton("1", () {
                    goToMobiliaPage(1);
                  })),
              Container(
                  margin: new EdgeInsets.all(4),
                  child: SubmitButton("2", () {
                    goToMobiliaPage(2);
                  })),
            ],
          ),
        )
      ],
    );
  }

  goToMobiliaPage(int garages) {

  }
}

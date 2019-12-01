import 'package:flutter/material.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';

class RequestPlacesPage extends StatefulWidget {
  final HelperRequest request;

  const RequestPlacesPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RequestPlacesPage();
}

class _RequestPlacesPage extends State<RequestPlacesPage> {
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
              PLACES_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              PLACES_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 100.0,
          height: 100.0,
          padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
          child: CircularProgressIndicator(),
        )
      ],
    );
  }
}

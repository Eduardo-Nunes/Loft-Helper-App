import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'HelperContainer.dart';
import 'RequestPlacesPage.dart';
import 'RoomsPage.dart';

class MobiliaPage extends StatefulWidget {
  final HelperRequest request;

  const MobiliaPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MobiliaPage();
}

class _MobiliaPage extends State<MobiliaPage> {
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
              MOBILIA_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              MOBILIA_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
          child: SubmitButton(SIM, () {
            goToPlacesPage(true);
          }),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 12.0, bottom: 100.0),
          child: SubmitButton(NAO, () {
            goToPlacesPage(false);
          }),
        )
      ],
    );
  }


  goToPlacesPage(bool mobilia) {
    setState(() {
      widget.request.mobilia = mobilia;
    });
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new HelperContainer(
          innerChild: RequestPlacesPage(request: widget.request), image: IMAGE_14);
    }));
  }

}

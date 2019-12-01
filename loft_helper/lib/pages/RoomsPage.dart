import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/pages/GaragePage.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'HelperContainer.dart';

class RoomsPage extends StatefulWidget {
  final HelperRequest request;

  const RoomsPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RoomsPage();
}

class _RoomsPage extends State<RoomsPage> {
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
              ROOMS_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              ROOMS_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 290.0,
          alignment: Alignment.center,
          padding: new EdgeInsets.only(top: 12.0, bottom: 100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: new EdgeInsets.all(4),
                child: SubmitButton("1", () {
                  goToGaragePage(1);
                }),
              ),
              Container(
                  margin: new EdgeInsets.all(4),
                  child: SubmitButton("2", () {
                    goToGaragePage(2);
                  })),
              Container(
                  margin: new EdgeInsets.all(4),
                  child: SubmitButton("3+", () {
                    goToGaragePage(3);
                  })),
            ],
          ),
        )
      ],
    );
  }

  goToGaragePage(int rooms) {
    setState(() {
      widget.request.rooms = rooms;
    });

    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new HelperContainer(
          innerChild: GaragePage(request: widget.request), image: IMAGE_12);
    }));
  }
}

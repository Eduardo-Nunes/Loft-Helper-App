import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/pages/LazerPage.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'HelperContainer.dart';
import 'WishPage.dart';

class BucketPage extends StatefulWidget {
  final HelperRequest request;

  const BucketPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BucketPage();
}

class _BucketPage extends State<BucketPage> {
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
              BUCKET_TITLE,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(
                bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              BUCKET_SUBTITLE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
          child: SubmitButton(LOW_BUCKET, () {
            goToLazerFlow(LOW_BUCKET);
          }),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.symmetric(vertical: 12.0),
          child: SubmitButton(MEDIUM_BUCKET, () {
            goToLazerFlow(MEDIUM_BUCKET);
          }),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 12.0, bottom: 48.0),
          child: SubmitButton(HIGH_BUCKET, () {
            goToLazerFlow(HIGH_BUCKET);
          }),
        )
      ],
    );
  }

  goToLazerFlow(String bucket) {
    widget.request.bucket = bucket;
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new HelperContainer(
          innerChild: LazerPage(request: widget.request), image: IMAGE_8);
    }));
  }
}

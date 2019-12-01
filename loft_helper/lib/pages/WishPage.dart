import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/pages/BucketPage.dart';
import 'package:loft_helper/pages/HelperContainer.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';

const HORIZONTAL_PADDING = 90.0;

class WishPage extends StatefulWidget {
  final HelperRequest request;

  const WishPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WishPage();
}

class _WishPage extends State<WishPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: new EdgeInsets.only(
                top: 24.0, bottom: 12.0, left: HORIZONTAL_PADDING, right: HORIZONTAL_PADDING),
            child: Text(
              widget.request.userName,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.symmetric(horizontal: HORIZONTAL_PADDING),
            child: Text(
              WISH_MESSAGE,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
          child: SubmitButton(SHOP, goToShopFlow),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.symmetric(vertical: 12.0),
          child: SubmitButton(SELL, goToSellFlow),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 12.0, bottom: 48.0),
          child: SubmitButton(TRADE, goToTradeFlow),
        )
      ],
    );
  }

  goToShopFlow() {
    setState(() {
      widget.request.wish = "SHOP";
    });
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) {
      return new HelperContainer(
          innerChild: BucketPage(request: widget.request), image: IMAGE_7);
    }));
  }

  goToSellFlow() {}

  goToTradeFlow() {}
}

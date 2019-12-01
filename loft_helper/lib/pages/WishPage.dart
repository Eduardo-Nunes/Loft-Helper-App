import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';

const HORIZONTAL_PADDING = 90.0;

class WishPage extends StatefulWidget {
  final String userName;

  const WishPage({Key key, this.userName}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WishPage();
}

class _WishPage extends State<WishPage> {
  var request = HelperRequest();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: new EdgeInsets.symmetric(
                vertical: 24.0, horizontal: HORIZONTAL_PADDING),
            child: Text(
              widget.userName,
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
          padding: new EdgeInsets.only(top: 40.0, bottom: 12.0),
          child: SubmitButton(SHOP, goToShopFlow),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.symmetric(vertical: 12.0),
          child: SubmitButton(SELL, goToSellFlow),
        ),
        Container(
          width: 234.5,
          padding: new EdgeInsets.only(top: 12.0, bottom: 75.0),
          child: SubmitButton(TRADE, goToTradeFlow),
        )
      ],
    );
  }

  goToShopFlow() {

  }

  goToSellFlow() {}

  goToTradeFlow() {}
}

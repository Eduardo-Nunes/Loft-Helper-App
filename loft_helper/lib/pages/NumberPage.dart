import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitText.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'EmailPage.dart';
import 'HelperContainer.dart';

class NumberPage extends StatefulWidget {

  final HelperRequest request;

  const NumberPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NumberPage();
}

class _NumberPage extends State<NumberPage> {
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
              "Ótimo, me fale",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              "o número do apartamento",
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
            width: 350,
            padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
            child: SubmitText(
                inputName: "numero",
                submitLabel: SEGUIR,
                hintLabel: "Digite o número do apto...",
                onFieldSubmittedCallback: (String text) {
                  setState(() {
                    widget.request.number = text;
                  });
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (BuildContext context) {
                    return new HelperContainer(
                        innerChild: EmailPage(request: widget.request), image: getRandomImage());
                  }));
                }))
      ],
    );
  }

}

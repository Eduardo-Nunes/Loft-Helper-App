import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitText.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/pages/MockedResultPage.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'HelperContainer.dart';
import 'RequestPlacesPage.dart';

class EmailPage extends StatefulWidget {
  final HelperRequest request;

  const EmailPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EmailPage();
}

class _EmailPage extends State<EmailPage> {
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
              "Para finalizar",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              "compartilhe comigo o seu e-mail",
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
            width: 350,
            padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
            child: SubmitText(
                inputName: "numero",
                submitLabel: ENVIAR,
                hintLabel: "Digite o seu e-mail...",
                onFieldSubmittedCallback: (String text) {
                  if (widget.request.reset == true) {
                    Navigator.of(context)
                        .push(new MaterialPageRoute(builder: (BuildContext context) {
                      return new HelperContainer(
                          innerChild: RequestPlacesPage(request: widget.request), image: IMAGE_14);
                    }));
                  } else {
                    setState(() {
                      widget.request.email = text;
                    });
                    Navigator.of(context).push(
                        new MaterialPageRoute(builder: (BuildContext context) {
                      return new HelperContainer(
                          innerChild: MockedResultPage(request: widget.request),
                          image: "");
                    }));
                  }
                }))
      ],
    );
  }
}

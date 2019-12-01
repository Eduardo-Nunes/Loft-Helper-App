import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitText.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'HelperContainer.dart';
import 'NumberPage.dart';

class WhereIsPage extends StatefulWidget {
  final HelperRequest request;

  const WhereIsPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WhereIsPage();
}

class _WhereIsPage extends State<WhereIsPage> {
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
              "Legal, onde fica?",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              "onde fica o seu imóvel?",
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Container(
            width: 350,
            padding: new EdgeInsets.only(top: 48.0, bottom: 12.0),
            child: SubmitText(
                inputName: ENDERECO_NAME,
                submitLabel: SEGUIR,
                hintLabel: ENDERECO_HINT,
                onFieldSubmittedCallback: (String text) {
                  setState(() {
                    widget.request.addres = text;
                  });
                  Navigator.of(context)
                      .push(new MaterialPageRoute(builder: (BuildContext context) {
                    return new HelperContainer(
                        innerChild: NumberPage(request: widget.request), image: getRandomImage());
                  }));
                }))
      ],
    );
  }
}

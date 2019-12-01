import 'package:flutter/material.dart';
import 'package:loft_helper/input/SubmitButton.dart';
import 'package:loft_helper/models/HelperRequest.dart';
import 'package:loft_helper/styles/Colors.dart';
import 'package:loft_helper/styles/Images.dart';
import 'package:loft_helper/styles/TextStyles.dart';

import '../CONSTS.dart';
import 'EmailPage.dart';
import 'HelperContainer.dart';

class MockedResultPage extends StatefulWidget {
  final HelperRequest request;

  const MockedResultPage({Key key, this.request}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MockedResultPage();
}

class _MockedResultPage extends State<MockedResultPage> {
  @override
  Widget build(BuildContext context) {
    var title = "";
    var subtitle = "";
    var button = "";
    switch (widget.request.wish) {
      case SHOP:
        {
          title = "Selecionamos 3 oportunidades para você";
          button = "Deixe seu e-mail para ver outras";
        }
        break;

      case SELL:
        {
          title = "Você receberá um e-mail com nossa avaliação em breve.";
          subtitle =
              "Confira abaixo algumas imóveis que poderiam ser uma oportunidades de troca:";
          button = "voltar ao início";
        }
        break;

      default:
        {
//          statement(s);
        }
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: new EdgeInsets.only(
                top: 24.0, bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: titleStyle,
              maxLines: 2,
            )),
        Padding(
            padding: new EdgeInsets.only(bottom: 12.0, left: 24.0, right: 24.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: subTitleStyle,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  getRandomImage(),
                  fit: BoxFit.fitWidth,
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("R\$1.615.000",
                      style: TextStyle(fontSize: 20, color: primaryColor)),
                  Text("Rua Itacema, 198",
                      style: TextStyle(fontSize: 12, color: mediumGrey)),
                  Text("Ap.51 - Edifício Eliana • Itaim Bibi - 5º andar",
                      style: TextStyle(fontSize: 12, color: mediumGrey))
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  getRandomImage(),
                  fit: BoxFit.fitWidth,
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("R\$1.460.000",
                      style: TextStyle(fontSize: 20, color: primaryColor)),
                  Text("Alameda Joaquim Eugênio de Lima, 1516",
                      style: TextStyle(fontSize: 12, color: mediumGrey)),
                  Text("Ap.24 - Edifício Apiúna - Jardim Paulista - 2º andar",
                      style: TextStyle(fontSize: 12, color: mediumGrey))
                ],
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  getRandomImage(),
                  fit: BoxFit.fitWidth,
                )),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("R\$1.347.500",
                      style: TextStyle(fontSize: 20, color: primaryColor)),
                  Text("R. Sabará, 538",
                      style: TextStyle(fontSize: 12, color: mediumGrey)),
                  Text("Ap. 101 - Higienópolis - 10º andar",
                      style: TextStyle(fontSize: 12, color: mediumGrey))
                ],
              ),
            )
          ],
        ),
        Padding(
            padding: new EdgeInsets.only(
                top: 24.0, bottom: 12.0, left: 24.0, right: 24.0),
            child: SubmitButton("button", () {
              setState(() {
                widget.request.reset = true;
              });
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: (BuildContext context) {
                return new HelperContainer(
                    innerChild: EmailPage(request: widget.request), image: getRandomImage());
              }));
            })),
      ],
    );
  }
}

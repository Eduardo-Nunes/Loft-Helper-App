import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loft_helper/styles/Colors.dart';
import 'package:loft_helper/styles/Dimens.dart';
import 'package:loft_helper/styles/Images.dart';

class HelperContainer extends StatefulWidget {
  final Widget innerChild;
  final String image;

  const HelperContainer({Key key, this.innerChild, this.image})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _HelperContainer();
}

class _HelperContainer extends State<HelperContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: paddingTop,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  appLogoImage,
                  Container(
                    alignment: Alignment.center,
                    height: 450,
                    margin: new EdgeInsets.symmetric(
                        horizontal: 48.0, vertical: 24.0),
                    child: widget.innerChild,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                      child: Image.asset(
                    widget.image,
                    fit: BoxFit.fitWidth,
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}

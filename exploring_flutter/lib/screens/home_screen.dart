import 'package:exploring_flutter/stateless_widgets/image_widget.dart';
import 'package:exploring_flutter/utils/app_assets.dart';
import 'package:exploring_flutter/utils/app_route_navigator.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'item_list_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      child: ListView(
        padding: EdgeInsets.only(top: 50.0),
        children: <Widget>[
          ImageWidget(),
          Center(
            child: textTitle("Flutter App"),
          ),
          raisedButton(context, "Open Item List Screen"),
        ],
      ),
    );
  }

  Text textTitle(String value) {
    return Text(value,
        textDirection: TextDirection.ltr,
        style: TextStyle(
        color: Colors.indigoAccent,
        fontSize: 40.0,
        fontFamily: "Roboto",
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.bold
    ));
  }

  RaisedButton raisedButton(BuildContext context, String buttonName) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).primaryColorLight,
      child: Text(buttonName, textScaleFactor: 1.5),
      onPressed: () {
        Fimber.d("Click");
        AppNavigator().navigateTo(context, ItemList());
      },
    );
  }

}


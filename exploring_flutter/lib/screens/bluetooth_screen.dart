import 'package:exploring_flutter/stateless_widgets/image_widget.dart';
import 'package:exploring_flutter/utils/app_route_navigator.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'item_list_screen.dart';

class BluetoothScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      child: ListView(
        padding: EdgeInsets.only(top: 50.0),
        children: <Widget>[
          ImageWidget(120.0, 120.0, "assets/images/flutter_ble_lib_logo.png"),
          Center(
            child: textTitle("App"),
          ),
          raisedButtonItemListScreen(context, "Test Click 1"),
          raisedButtonWebSocketTest(context, "Test Click 2"),
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

  RaisedButton raisedButtonItemListScreen(BuildContext context, String buttonName) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).primaryColorLight,
      child: Text(buttonName, textScaleFactor: 1.5),
      onPressed: () {
        Fimber.d("Click: $buttonName");
        // do stuff
      },
    );
  }

  RaisedButton raisedButtonWebSocketTest(BuildContext context, String buttonName) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).primaryColorLight,
      child: Text(buttonName, textScaleFactor: 1.5),
      onPressed: () {
        Fimber.d("Click: $buttonName");
        // do stuff
      },
    );
  }

}


//
//
//@override
//  void dispose() {
//   // inputController.dispose();
//  //  channel.sink.close();
//    super.dispose();
//  }
//
//

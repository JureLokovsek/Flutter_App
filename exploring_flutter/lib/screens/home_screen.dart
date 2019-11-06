import 'package:exploring_flutter/screens/bluetooth_screen.dart';
import 'package:exploring_flutter/stateless_widgets/image_widget.dart';
import 'package:exploring_flutter/utils/app_route_navigator.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import 'item_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white70,
      child: ListView(
        padding: EdgeInsets.only(top: 50.0),
        children: <Widget>[
          ImageWidget(120.0, 120.0, "assets/images/flutter.png"),
          Center(
            child: textTitle("Flutter App"),
          ),
          raisedButtonItemListScreen(context, "Open List Screen", ItemListScreen()),
          raisedButtonWebSocketTest(context, "Open Bluetooth Screen", BluetoothScreen()),
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

  RaisedButton raisedButtonItemListScreen(BuildContext context, String buttonName, StatefulWidget statefulWidget) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).primaryColorLight,
      child: Text(buttonName, textScaleFactor: 1.5),
      onPressed: () {
        Fimber.d("Click: Goint to $buttonName");
        AppNavigator().navigateToStatefulWidget(context, statefulWidget);
      },
    );
  }

  RaisedButton raisedButtonWebSocketTest(BuildContext context, String buttonName, StatelessWidget statelessWidget) {
    return RaisedButton(
      padding: EdgeInsets.only(left: 50.0, right: 50.0),
      color: Theme.of(context).primaryColorDark,
      textColor: Theme.of(context).primaryColorLight,
      child: Text(buttonName, textScaleFactor: 1.5),
      onPressed: () {
        Fimber.d("Click: Goint to $buttonName");
        AppNavigator().navigateToStatelessWidget(context, statelessWidget);
      },
    );
  }

  void showDialog1(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Uspešno izveden klik!"),
      content: Text("Vaša prijava je upešna"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

}



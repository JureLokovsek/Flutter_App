
import 'package:flutter/material.dart';

class AppNavigator {

  Future navigateTo(BuildContext context, StatefulWidget widget) {
    return Navigator.push(context, MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  void navigateBack(BuildContext context) {
    Navigator.pop(context);
  }

}
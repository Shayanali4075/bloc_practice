import 'package:flutter/material.dart';

class Navigation {
  to(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => screen,
    ));
  }
  pop(BuildContext context){
    Navigator.of(context).pop();
  }
}

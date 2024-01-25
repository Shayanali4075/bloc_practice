import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? title;
  final Function()? ontap;
  const MyButton({super.key, this.title, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: ontap, child: Text(title.toString()));
  }
}

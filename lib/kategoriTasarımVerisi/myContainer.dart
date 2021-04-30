import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  MyContainer({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.lightBlueAccent),
    );
  }
}
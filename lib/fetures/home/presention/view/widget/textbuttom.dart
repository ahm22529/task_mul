import 'package:flutter/material.dart';

class textbuttomcon extends StatelessWidget {
  const textbuttomcon({
    super.key,
    required this.widget,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: widget),
    );
  }
}

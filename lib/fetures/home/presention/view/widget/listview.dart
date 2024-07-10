import 'package:flutter/material.dart';

class Customlistview extends StatelessWidget {
  const Customlistview({
    super.key,
    required this.widget,
  });
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: widget,
          );
        },
      ),
    );
  }
}

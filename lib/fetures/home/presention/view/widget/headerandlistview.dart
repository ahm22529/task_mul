import 'package:flutter/material.dart';
import 'package:task_mul/fetures/home/presention/view/widget/customiteam.dart';
import 'package:task_mul/fetures/home/presention/view/widget/headerofcatgry.dart';
import 'package:task_mul/fetures/home/presention/view/widget/listview.dart';

class HeaderAndListview extends StatelessWidget {
  const HeaderAndListview({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Column(
        children: [
          Headerofcatogy(text: text),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: const Customlistview(widget: CustomIteam()),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:task_mul/fetures/home/presention/view/widget/bodyhome.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: BodyHomeView(),
    );
  }
}

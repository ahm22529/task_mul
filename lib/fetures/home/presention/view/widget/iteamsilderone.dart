import 'package:flutter/material.dart';
import 'package:task_mul/fetures/home/presention/view/widget/iteamsilderpromteone.dart';

class Promoted extends StatelessWidget {
  const Promoted({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xff292A5A),
                Color(0xffFF2441).withOpacity(.47)
              ]),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Image.asset(
                    "asset/image/Group 709.png",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: SacannndContiner()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

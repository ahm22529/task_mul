import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';
import 'package:task_mul/fetures/home/presention/view/widget/fav.dart';
import 'package:task_mul/main.dart';

class CustomIteam extends StatelessWidget {
  const CustomIteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("asset/image/Rectangle 25 (2).png"),
        const SizedBox(
          height: 5,
        ),
        const Fav(),
        const SizedBox(
          height: 11,
        ),
        Text(
          " 400.00",
          style: AppStyles.styleRegular9(context).copyWith(
              color: const Color(0xffBD6633), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

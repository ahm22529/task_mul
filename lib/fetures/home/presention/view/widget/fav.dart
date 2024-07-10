import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';

class Fav extends StatelessWidget {
  const Fav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Crochet",
          style: AppStyles.styleRegular9(context).copyWith(
              color: const Color(0xff161616), fontWeight: FontWeight.w600),
        ),
        Image.asset("asset/image/Group 681.png")
      ],
    );
  }
}

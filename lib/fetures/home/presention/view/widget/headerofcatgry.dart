import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';

class Headerofcatogy extends StatelessWidget {
  const Headerofcatogy({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Text(
            text,
            style: AppStyles.styleRegular12(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Text(
            "See all",
            style: AppStyles.styleRegular12(context).copyWith(
                color: const Color(0xffBD6633), fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

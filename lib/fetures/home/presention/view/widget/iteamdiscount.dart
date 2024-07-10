import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';
import 'package:task_mul/fetures/home/presention/view/widget/fav.dart';

class IteamDiscount extends StatelessWidget {
  const IteamDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
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
            "400.00",
            style: AppStyles.styleRegular9(context).copyWith(
                color: const Color(0xffBD6633), fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "400.00",
            style: AppStyles.styleRegular9(context).copyWith(
              color: const Color(0xff777777),
              fontWeight: FontWeight.w600,
              fontSize: 6,
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ],
      ),
    );
  }
}

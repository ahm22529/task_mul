import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';
import 'package:task_mul/fetures/home/presention/view/widget/buttomreminder.dart';
import 'package:task_mul/main.dart';

class Promotedwo extends StatelessWidget {
  const Promotedwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Color(0xff913B10),
            child: Row(
              children: [
                Image.asset(
                  "asset/image/Group 1 (1).png",
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: ScandContinertwo(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ScandContinertwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffA8F9EA),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2), bottomRight: Radius.circular(2))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                "Promo up to 15% for Mybeline\n MAGNUM",
                style: AppStyles.stylemeduim5(context)
                    .copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text("E,njoy special promos for you from selected brands",
                style: AppStyles.stylemeduim5(context)
                    .copyWith(color: Color(0xff777777))),
            SizedBox(
              height: 3,
            ),
            Text(
              "25-26 December",
              style:
                  AppStyles.stylemeduim5(context).copyWith(color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: reminder()),
          ],
        ),
      ),
    );
  }
}

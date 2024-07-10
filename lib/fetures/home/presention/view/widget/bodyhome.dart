import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';
import 'package:task_mul/fetures/home/presention/view/widget/appbar.dart';
import 'package:task_mul/fetures/home/presention/view/widget/headerandlistview.dart';
import 'package:task_mul/fetures/home/presention/view/widget/headerofcatgry.dart';
import 'package:task_mul/fetures/home/presention/view/widget/iteamdiscount.dart';
import 'package:task_mul/fetures/home/presention/view/widget/listview.dart';
import 'package:task_mul/fetures/home/presention/view/widget/slider.dart';
import 'package:task_mul/fetures/home/presention/view/widget/timerdown.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Titelappbar(
            name: 'Search what you need',
          ),
          SizedBox(
            height: 16,
          ),
          Image.asset("asset/image/Rectangle 11.png"),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Headerdiscounrt(),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Customlistview(
              widget: IteamDiscount(),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Headerofcatogy(text: "upcoming promote"),
          SizedBox(
            height: 16,
          ),
          ImageSlider(),
          SizedBox(
            height: 16,
          ),
          const HeaderAndListview(
            text: 'New in Bags & watches',
          ),
          const HeaderAndListview(
            text: 'New in Crochet Clothes',
          ),
          const HeaderAndListview(
            text: 'New in Antiqes & Ceramic',
          ),
          const HeaderAndListview(
            text: 'New in Wedding & Social events',
          ),
          const HeaderAndListview(
            text: 'Software Services',
          ),
          const SizedBox(
            height: 27,
          ),
        ],
      ),
    );
  }
}

class Headerdiscounrt extends StatelessWidget {
  const Headerdiscounrt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Discount ends in",
          style: AppStyles.styleRegular12(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          width: 2,
        ),
        CountdownTimer(),
        const Spacer(),
        Text(
          "See all",
          style: AppStyles.styleRegular12(context).copyWith(
              color: const Color(0xffBD6633), fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

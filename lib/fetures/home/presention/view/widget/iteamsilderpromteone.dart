import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';
import 'package:task_mul/fetures/home/presention/view/widget/buttomreminder.dart';
import 'package:task_mul/fetures/home/presention/view/widget/textbuttom.dart';

class SacannndContiner extends StatelessWidget {
  const SacannndContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          color: Color(0xffA4A4A4),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(2), bottomRight: Radius.circular(2))),
      child: BodyscandContiner(),
    );
  }
}

class BodyscandContiner extends StatelessWidget {
  const BodyscandContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        textbuttomcon(
            widget: Column(
          children: [
            Text('Extra 37% Off',
                style: AppStyles.stylemeduim5(context)
                    .copyWith(color: Colors.white)),
            Text('+ Cashback 15%',
                style: AppStyles.stylemeduim5(context)
                    .copyWith(color: Colors.blue)),
          ],
        )),
        textbuttomcon(
          widget:
              Text('24-26 December', style: AppStyles.stylemeduim5(context)),
        ),
        const reminder(),
      ],
    );
  }
}

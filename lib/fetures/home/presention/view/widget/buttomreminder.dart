import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';

class reminder extends StatelessWidget {
  const reminder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(color: Color(0xffBD6633)),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 8),
            child: Text(
              "remider",
              style:
                  AppStyles.stylemeduim5(context).copyWith(color: Colors.white),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:task_mul/fetures/home/presention/view/widget/search.dart';

class Titelappbar extends StatelessWidget {
  const Titelappbar({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: continertextfiled(
              name: name,
            ),
          ),
        ),
        IconButton(
          icon: Image.asset('asset/image/camera-fill 1.png'),
          onPressed: () {},
        ),
      ],
    );
  }
}

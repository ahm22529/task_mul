import 'package:flutter/material.dart';
import 'package:task_mul/core/utiles/styel.dart';

class continertextfiled extends StatelessWidget {
  const continertextfiled({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Image.asset(
              'asset/image/search-line 2.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: customtextfiledstore(
                name: name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class customtextfiledstore extends StatelessWidget {
  const customtextfiledstore({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: name,
          hintStyle: AppStyles.styleRegular11(context),
          border: InputBorder.none),
      textAlign: TextAlign.left,
    );
  }
}

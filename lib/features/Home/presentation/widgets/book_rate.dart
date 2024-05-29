import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRate extends StatelessWidget {
  const BookRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_rate_rounded,
          color: Colors.yellow,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle20,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          '(2289)',
          style: Styles.textStyle12,
        )
      ],
    );
  }
}

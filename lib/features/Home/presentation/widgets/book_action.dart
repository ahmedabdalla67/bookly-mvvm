import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              text: '19.99 \$',
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.lightGreen,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              text: 'Free Preview',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

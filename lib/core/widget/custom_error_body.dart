import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorBody extends StatelessWidget {
  const CustomErrorBody({super.key, required this.errMessage});
final String errMessage;
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(errMessage, style: Styles.textStyle18,));
  }
}
import 'package:bookly_app/features/Home/presentation/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class BookHomeDetailsView extends StatelessWidget {
  const BookHomeDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsBody(),
      ),
    );
  }
}

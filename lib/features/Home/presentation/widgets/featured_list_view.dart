import 'package:bookly_app/core/widget/custom_error_body.dart';
import 'package:bookly_app/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_book_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksfailure) {
          return CustomErrorBody(errMessage: state.errMessage);
        }
       else if(state is FeaturedBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CustomBookImage(),
            ),
            itemCount: 10,
          ),
        );
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}

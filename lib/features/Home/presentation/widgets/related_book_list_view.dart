import 'package:bookly_app/core/widget/custom_error_body.dart';
import 'package:bookly_app/features/Home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedBooksListView extends StatelessWidget {
  const RelatedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            },
          ),
        );
        }else if(state is SimilarBooksfailure){
          return CustomErrorBody(errMessage: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
        
      },
    );
  }
}

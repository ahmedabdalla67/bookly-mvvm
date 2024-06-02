import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/manager/similar_books_cubit/cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookHomeDetailsView extends StatefulWidget {
  const BookHomeDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookHomeDetailsView> createState() => _BookHomeDetailsViewState();
}

class _BookHomeDetailsViewState extends State<BookHomeDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BookDetailsBody(bookModel:widget.bookModel ,),
      ),
    );
  }
}

import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/widgets/app_bar_book_detail.dart';
import 'package:bookly_app/features/Home/presentation/widgets/book_rate.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/features/Home/presentation/widgets/book_action.dart';
import 'package:bookly_app/features/Home/presentation/widgets/related_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.22;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AppBarBookDetails(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width),
                  child:  CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,),
                ),
                 Text(
                  bookModel.volumeInfo.title!,
                  textAlign: TextAlign.center,
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 3,
                ),
                 Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle16,
                ),
                const SizedBox(
                  height: 8,
                ),
                const BookRate(),
                const SizedBox(
                  height: 30,
                ),
                const BookAction(),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle16,
                    )),
                const SizedBox(
                  height: 16,
                ),
                const RelatedBooksListView(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

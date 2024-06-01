import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/widgets/app_bar_book_detail.dart';
import 'package:bookly_app/features/Home/presentation/widgets/book_rate.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/features/Home/presentation/widgets/book_action.dart';
import 'package:bookly_app/features/Home/presentation/widgets/related_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
                  child: const CustomBookImage(imageUrl: 'https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',),
                ),
                const Text(
                  'SOUL',
                  style: Styles.textStyle30,
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'Olivia Wilson',
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

import 'package:bookly_app/core/utils/styles.dart';

import 'package:bookly_app/features/Home/presentation/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_app_bar.dart';
//import 'package:bookly_app/features/Home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/Home/presentation/widgets/featured_list_view.dart';

import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomAppBar(),
              ),
              FeaturedListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
         SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}

// class BookListViewItem extends StatelessWidget {
//   const BookListViewItem({super.key, required this.bookModel});

//   final BookModel bookModel;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 125,
//       child: Row(
//         children: [
//           CustomBookImage(
//               imageUrl: bookModel.volumeInfo.imageLinks.thumbnail ),
//           const SizedBox(
//             width: 30,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * .5,
//                   child: Text(
//                     bookModel.volumeInfo.title!,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                     style: Styles.textStyle20,
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 Text(
//                   bookModel.volumeInfo.authors![0],
//                   style: Styles.textStyle12,
//                 ),
//                 const SizedBox(
//                   height: 3,
//                 ),
//                 Row(
//                   children: [
//                     Text(
//                       'Free',
//                       style: Styles.textStyle20.copyWith(
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const Spacer(),
//                     BookRate(
                      
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


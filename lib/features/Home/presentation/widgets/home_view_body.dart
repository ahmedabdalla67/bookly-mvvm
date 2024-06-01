import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/Home/presentation/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/Home/presentation/widgets/custom_app_bar.dart';
//import 'package:bookly_app/features/Home/presentation/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/Home/presentation/widgets/featured_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeviewBody extends StatelessWidget {
  const HomeviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
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
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => const AspectRatio(
            aspectRatio: 6/2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
              child: BestSellerListViewItem(),
            ),
          ),
          itemCount: 10,
        )
      ],
    );
  }
}

import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/router.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 100,
          ),
          IconButton(
              onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);

              },
              icon: const Icon(
                Icons.search,
                size: 28,
              ))
        ],
      ),
    );
  }
}

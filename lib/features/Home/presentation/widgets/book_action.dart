import 'package:bookly_app/core/widget/custom_button.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: CustomButton(
              
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              text: '19.99 \$',
            ),
          ),
           Expanded(
            child: CustomButton(
              onPressed: ()async{
                final Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              backgroundColor: Colors.lightGreen,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              text: 'Free Preview',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

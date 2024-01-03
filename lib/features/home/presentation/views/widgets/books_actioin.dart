import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';


import '../../../../../core/utils/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
onPressed: ()async{
  launcheCustomUrl(context, bookModel.volumeInfo.previewLink!);
},
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(14)),
            text: 'Free',
            textSize: 18,
          )),
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.pinkAccent,
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(14)),
            text: getText(bookModel),
            textSize: 16, onPressed: () {  },
          )),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return "Not Avaliable";
    }else{
      return "Preview";
    }
  }
}

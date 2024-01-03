import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import '../../../data/models/book_model/book_model.dart';
import 'books_detalis_section.dart';
import 'custom_book_details_app_bar.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                BookDetailsSection(book: bookModel),
                const Expanded(
                    child: SizedBox(
                  height: 50,
                )),
                const SimilerBooksSection(),
                const SizedBox(
                  height: 18,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_skeleton/book_newest_skeleton.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.bookDetailsView,extra: state.books[index]);

                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: CustomBookImage(imageUrl: state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidegt(errorMessage: state.errMessage);
        } else {
          return const SkeletonNewestBooks();
        }
      },
    );
  }
}

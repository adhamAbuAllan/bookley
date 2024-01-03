import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_skeleton/book_newest_skeleton.dart';
import 'package:bookly/features/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(bookModel: state.books[index]),
              );
            });
        }else if (state is NewestBooksFailure){
          return CustomErrorWidegt(errorMessage: state.errMessage);
        }else{
          return const SkeletonNewestBooks();
        }
      },
    );
  }
}

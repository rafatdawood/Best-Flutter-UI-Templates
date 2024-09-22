import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: BookListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: Center(
              child: CustomErrorWidget(errorMessage: state.errorMessage),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CustomLoadingIndicator(),
            ),
          );
        }
      },
    );
  }
}

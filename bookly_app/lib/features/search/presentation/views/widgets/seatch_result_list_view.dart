import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/search/presentation/manger/search_books_cubit/search_book_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if(state is SearchBookInitial){
          return const Center(child: Text('Search Your Book'),);
        }else if (state is SearchBookSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, left: 10),
                child: SearchListViewItem(
                  bookModel: state
                      .books[index],), //BookListViewItem(bookModel: ),
              );
            },
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
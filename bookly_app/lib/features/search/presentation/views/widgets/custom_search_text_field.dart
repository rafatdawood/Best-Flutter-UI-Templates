import 'package:bookly_app/features/search/presentation/manger/search_books_cubit/search_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}
 final searchController = TextEditingController();
class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchBookCubit>(context).fetchSearchBook(title: searchController.text);
          },
          icon: const Opacity(
            opacity: .8,
            child: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          hintText: widget.hint,
          suffixIcon: GestureDetector(
            onTap: () {
              searchController.text.trim().isNotEmpty
                  ? navToHomePage(searchController.text.trim())
                  : null;
            },
            child: const Icon(Icons.search),
          ),
          hintStyle: AppStyles.overpassRegular18(context)
              .copyWith(color: const Color(0xFF828BA9), shadows: []),
          border: buildOutlineInputBorder(),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  navToHomePage(String name) {
    GoRouter.of(context).pop(name);
  }
}

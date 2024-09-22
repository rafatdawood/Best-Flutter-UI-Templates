import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_item.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';

import 'all_expenses_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}

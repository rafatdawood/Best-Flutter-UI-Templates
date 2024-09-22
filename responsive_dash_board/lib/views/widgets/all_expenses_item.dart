import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';

import 'active_and_inactive_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpensesModel, required this.isSelected});

  final AllExpensesModel allExpensesModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(allExpensesModel: allExpensesModel)
        : InActiveAllExpensesItem(allExpensesModel: allExpensesModel);
  }
}



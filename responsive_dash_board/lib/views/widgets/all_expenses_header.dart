import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

import 'range_option.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOption()
      ],
    );
  }
}

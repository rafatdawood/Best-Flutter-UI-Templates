import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.allExpensesModel});

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesModel.image,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpensesModel});

  final AllExpensesModel allExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesModel.image,
            imageBgColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: const Color(0xFFFFFFFF)),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: const Color(0xFFFFFFFF)),
            ),
          ),
        ],
      ),
    );
  }
}
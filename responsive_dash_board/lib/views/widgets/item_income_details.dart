import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/in_come_model.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class ItemIncomeDetails extends StatelessWidget {
  const ItemIncomeDetails({super.key, required this.inComeModel});
  final InComeModel inComeModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(shape: const OvalBorder(),color: inComeModel.color),
      ),
      title: Text(inComeModel.title,style: AppStyles.styleRegular16(context),),
      trailing: Text(inComeModel.value,style: AppStyles.styleMedium16(context),),
    );
  }
}

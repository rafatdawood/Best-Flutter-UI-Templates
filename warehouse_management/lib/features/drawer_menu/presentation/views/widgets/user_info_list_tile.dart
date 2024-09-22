import 'package:flutter/material.dart';
import 'package:warehouse_management/core/utils/app_style.dart';
import 'package:warehouse_management/core/utils/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel,});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
      ),
    );
  }
}

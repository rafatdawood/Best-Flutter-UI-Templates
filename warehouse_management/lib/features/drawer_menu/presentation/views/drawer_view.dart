import 'package:flutter/material.dart';
import 'package:warehouse_management/core/utils/models/user_info_model.dart';
import 'package:warehouse_management/features/drawer_menu/presentation/views/widgets/user_info_list_tile.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      padding: const EdgeInsets.only(left: 28, right: 20),
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(userInfoModel: UserInfoModel(
                title: 'Lekan Okeowo'),),
          )
        ],
      ),
    );
  }
}

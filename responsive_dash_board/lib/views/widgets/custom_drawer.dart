import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

import 'drawer_list.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *.7,
      padding: const EdgeInsets.only(left: 28, right: 20),
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesProfilePic,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSetting),
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

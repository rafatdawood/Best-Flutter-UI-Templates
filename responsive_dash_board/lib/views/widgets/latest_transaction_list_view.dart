import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((item) => IntrinsicWidth(
                    child: UserInfoListTile(
                  userInfoModel: item,
                )))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return SizedBox(
    //         child: IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}

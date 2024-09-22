import 'package:flutter/material.dart';
import 'package:test_responsive_and_adaptive/models/drawer_item_model.dart';

import 'custom_drawer_item.dart';

class CustomDrawerItemListBuildr extends StatelessWidget {
  const CustomDrawerItemListBuildr({super.key, required this.items});
  final List<DrawerItemModel>items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(
          drawerItemModel: items[index],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';

import 'all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final items = [
    const AllExpensesModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == 0, allExpensesModel: items[0]),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == 1, allExpensesModel: items[1]),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
                isSelected: selectedIndex == 2, allExpensesModel: items[2]),
          ),
        ),
      ],
    );
    // return Row(
    //   children: items.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       var item = e.value;
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             updateIndex(index);
    //           },
    //           child: Padding(
    //             padding: index == 1
    //                 ? const EdgeInsets.symmetric(horizontal: 12)
    //                 : const EdgeInsets.symmetric(horizontal: 0),
    //             child: AllExpensesItem(
    //                 isSelected: selectedIndex == index, allExpensesModel: item),
    //           ),
    //         ),
    //       );
    //     },
    //   ).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

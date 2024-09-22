import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/in_come_model.dart';

import 'item_income_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    InComeModel(
        color: Color(0xFF208BC7), title: 'Design service', value: '40%'),
    InComeModel(
        color: Color(0xFF4DB7F2), title: 'Design product', value: '25%'),
    InComeModel(
        color: Color(0xFF064060), title: 'Product royalti', value: '20%'),
    InComeModel(color: Color(0xFFE2DECD), title: 'Other', value: '15%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: items.map((item)=>ItemIncomeDetails(inComeModel: item)).toList(),);
  }
}

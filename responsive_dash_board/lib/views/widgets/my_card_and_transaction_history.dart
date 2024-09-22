import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_section.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xFFAAAAAA),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}

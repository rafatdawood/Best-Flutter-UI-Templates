import 'package:flutter/material.dart';

import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_section.dart';
import 'package:responsive_dash_board/views/widgets/my_card_and_transaction_history.dart';

import 'all_expenses_and_quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoice(),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 40),
                        MyCardAndTransactionHistory(),
                        SizedBox(height: 24),
                        Expanded(child: IncomeSection()),
                      ],
                    ),
                  ),
                ],),
              )
            ],
          ),
        )
      ],
    );
  }
}

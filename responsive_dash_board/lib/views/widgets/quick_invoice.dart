import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_form.dart';

import 'latest_transaction.dart';
import 'quick_invoice_header.dart';
import 'title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48,color: Color(0xFFF1F1F1),),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}

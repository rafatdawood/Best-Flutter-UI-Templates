import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/income_header.dart';

import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionBody()
        ],
      ),
    );
  }
}

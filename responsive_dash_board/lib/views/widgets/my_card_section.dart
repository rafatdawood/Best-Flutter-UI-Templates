import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/my_cart_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener((){
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(height: 20),
        MyCartPageView(pageController: pageController,),
        const SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}

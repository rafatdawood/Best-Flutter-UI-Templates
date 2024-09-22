import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:warehouse_management/core/utils/models/app_router.dart';
import 'package:warehouse_management/core/utils/models/assets.dart';
import 'package:warehouse_management/features/splash/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),(){
      // GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 300),
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(Assets.logoSplash),
            ),
          ),
          const SizedBox(height: 5),
          SlidingText(slidingAnimation: slidingAnimation,),
        ],
      ),
    );
  }
}

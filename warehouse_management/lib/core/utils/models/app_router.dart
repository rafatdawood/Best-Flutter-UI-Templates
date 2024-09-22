
import 'package:go_router/go_router.dart';

import '../../../features/home/presentation/views/home_view.dart';
import '../../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      // GoRoute(
      //   path: kBookDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (BuildContext context) =>
      //         SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
      //     child: BookDetailsView(
      //       bookModel: state.extra as BookModel,
      //     ),
      //   ),
      // ),
    ],
  );
}

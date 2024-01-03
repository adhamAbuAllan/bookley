import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_detalis_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/home_view.dart';
import '../../features/search/presentation/views/search_view.dart';
import '../../features/splash/presentation/view_models/views/splash_view.dart';

abstract class AppRouter {
  static const homeView = '/homeView';

  // static const homeView = '/homeView';
  // static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: homeView, builder: (context, state) => const HomeView()),


    GoRoute(
        path: bookDetailsView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
              child: BookDetailsView(bookModel: state.extra as BookModel,),
            )),


    GoRoute(path: searchView, builder: (context, state) => const Searchview()),
  ]);
}

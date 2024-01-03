import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/service_locator.dart';

main() {
  setupServeiceLocator();
  runApp(const Bookly());

}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..featchFeaturedBooks()),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())..featchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: const Color(0xff100b20)),
      ),
    );
  }
}
// class Human(){
//   int _numberOfArms = 2;
//   set numberOfArms(int numberOfArms){
//     if(numberOfArms <=2 && numberOfArms>=0){
//       this._
//     }
//   }
// }
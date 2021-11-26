import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/presentation/pages/home/home.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:travel_app/utils/text_styles.dart';

import 'config/routes/navigation_service.dart';
import 'config/routes/route_generator.dart';
import 'config/routes/routes.dart';
import 'injection.dart';

void main() {
  configureInjection(Environment.dev);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      initialRoute: Routes.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: getIt<NavigationService>().navigatorKey,
      theme: ThemeData(
          fontFamily: 'Regular',
          textTheme: theme,
          scaffoldBackgroundColor: AppColors.white,
          appBarTheme: AppBarTheme(
              centerTitle: true,
              backgroundColor: AppColors.white,
              elevation: 0,
              titleTextStyle: TextStyles.heading.copyWith(fontSize: 25))),
      home: Home(),
    );
  }
}

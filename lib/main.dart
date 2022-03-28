import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hire_me/views/mobile/home.dart';
import 'package:hire_me/views/mobile/talent_overview.dart';
import 'package:hire_me/views/web/home_web.dart';
import 'package:hire_me/views/web/talent_overview_web.dart';

import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Southern Hire',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: selectPlaform(),
      routes: {
        Routes.home: (context) => HomeMobile(),
        Routes.homeWeb: (context) => HomeWeb(),
        Routes.talentOverview: (context) => TalentOverview(),
        Routes.talentOverviewWeb: (context) => TalentOverviewWeb(),

      },
    );
  }

  String selectPlaform(){
    if (defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS){
      return Routes.home;
    }
    else {
        return Routes.homeWeb;
    }
  }
}


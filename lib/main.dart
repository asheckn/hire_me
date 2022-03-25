import 'package:flutter/material.dart';
import 'package:hire_me/views/mobile/home.dart';
import 'package:hire_me/views/mobile/talent_overview.dart';

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
      initialRoute: Routes.home,
      routes: {
        Routes.home: (context) => HomeMobile(),
        Routes.talentOverview: (context) => TalentOverview(),

      },
    );
  }
}


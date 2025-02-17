import 'package:flutter/material.dart';

import 'app/alert/alert.dart';
import 'app/ride/ride.flow.dart';
import 'app/ride/routes/routes.dart';
import 'globals/app_values.dart';
import 'util/log.util.dart';

void main() {
  LogUtil.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertWrapper(
      app: MaterialApp(
        title: AppValues.title,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: RouteSelection(flow: RideFlow()),
      ),
    );
  }
}

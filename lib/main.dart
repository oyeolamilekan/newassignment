import 'package:flutter/material.dart';
import 'package:ui_assignment_flutter/pages/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui assignment',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Index(
        key: GlobalObjectKey(context),
      ),
    );
  }
}

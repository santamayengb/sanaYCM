import 'package:flutter/material.dart';
import 'package:sana_y_c_m/login_page/login_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SanaYCM',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPageWidget(),
    );
  }
}

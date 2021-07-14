import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TakeaTestWidget extends StatefulWidget {
  TakeaTestWidget({Key key}) : super(key: key);

  @override
  _TakeaTestWidgetState createState() => _TakeaTestWidgetState();
}

class _TakeaTestWidgetState extends State<TakeaTestWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CprogramePageWidget extends StatefulWidget {
  CprogramePageWidget({Key key}) : super(key: key);

  @override
  _CprogramePageWidgetState createState() => _CprogramePageWidgetState();
}

class _CprogramePageWidgetState extends State<CprogramePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF004AAD),
        automaticallyImplyLeading: true,
        title: Image.asset(
          'assets/images/SanaYCM.png',
          width: 80,
          height: 80,
          fit: BoxFit.cover,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.person,
              color: Color(0xFFEAEAEA),
              size: 25,
            ),
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {
              print('IconButton pressed ...');
            },
            icon: Icon(
              Icons.more_vert,
              color: Color(0xFFEAEAEA),
              size: 25,
            ),
            iconSize: 25,
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            child: Text(
                              'Hello World',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}

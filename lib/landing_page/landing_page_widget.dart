import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWidget extends StatefulWidget {
  LandingPageWidget({Key key}) : super(key: key);

  @override
  _LandingPageWidgetState createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF004AAD),
        automaticallyImplyLeading: false,
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
        elevation: 2,
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                labelColor: FlutterFlowTheme.primaryColor,
                indicatorColor: FlutterFlowTheme.secondaryColor,
                tabs: [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(
                    text: 'Examples',
                  ),
                  Tab(
                    text: 'Videos',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Text(
                      'Home Tab',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'Tab View 2',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      'Tab View 3',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

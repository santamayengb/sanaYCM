import '../cprograme_page/cprograme_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

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
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
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
                  ),
                  Tab(
                    text: 'Chat with me',
                  )
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 1,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Colors.white,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 8),
                                          child: Image.network(
                                            'data:image/png;base64,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',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Text(
                                          'Let begin with',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Text(
                                          'Basic C Programing',
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 8, 0, 0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              await Navigator.push(
                                                context,
                                                PageTransition(
                                                  type: PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 300),
                                                  reverseDuration: Duration(
                                                      milliseconds: 300),
                                                  child: CprogramePageWidget(),
                                                ),
                                              );
                                            },
                                            text: 'Start',
                                            options: FFButtonOptions(
                                              width: 100,
                                              height: 30,
                                              color:
                                                  FlutterFlowTheme.primaryColor,
                                              textStyle: FlutterFlowTheme
                                                  .subtitle2
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius: 12,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Coming Soon',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Coming Soon',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Tab View 2',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFFF5F5F5),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      FlutterFlowYoutubePlayer(
                                        url:
                                            'https://www.youtube.com/watch?v=C30hQ0ZSFoM',
                                        autoPlay: false,
                                        looping: true,
                                        mute: false,
                                        showControls: true,
                                        showFullScreen: true,
                                      ),
                                      Text(
                                        'Hello World',
                                        style:
                                            FlutterFlowTheme.bodyText1.override(
                                          fontFamily: 'Poppins',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Tab View 4',
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

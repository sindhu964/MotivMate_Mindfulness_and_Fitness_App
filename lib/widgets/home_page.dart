import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

import 'logged_in_page_model.dart';
export 'logged_in_page_model.dart';

class LoggedInPageWidget extends StatefulWidget {
  const LoggedInPageWidget({
    super.key,
    this.quotes,
    this.daily,
  });

  final String? quotes;
  final String? daily;

  @override
  State<LoggedInPageWidget> createState() => _LoggedInPageWidgetState();
}

class _LoggedInPageWidgetState extends State<LoggedInPageWidget> {
  late LoggedInPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoggedInPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          elevation: 16,
          child: WebViewAware(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('signIn');
                    },
                    text: 'LogOut',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFC96C44),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Profile');
                    },
                    text: 'Profile',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: Color(0xFFC96C44),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                                letterSpacing: 0.0,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFC96C44),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Home',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontSize: 20,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Align(
                alignment: AlignmentDirectional(-1, -1),
                child: Container(
                  width: 404,
                  height: 681,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 400),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 20, 0, 0),
                                  child: Text(
                                    'Embrace the journey to self-improvement!',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 16,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 30, 0, 0),
                                  child: GridView(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      childAspectRatio: 1,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      'https://cdn-icons-png.flaticon.com/256/6476/6476306.png',
                                                      width: 291,
                                                      height: 212,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: AlignedTooltip(
                                                  content: Padding(
                                                    padding: EdgeInsets.all(4),
                                                    child: Text(
                                                      'App Tasks',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 12,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4,
                                                  tailBaseWidth: 24,
                                                  tailLength: 12,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration: Duration(
                                                      milliseconds: 100),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: Opacity(
                                                    opacity: 0,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              4.22, 3.54),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderRadius: 20,
                                                        borderWidth: 1,
                                                        buttonSize: 123,
                                                        fillColor:
                                                            Color(0x4C4B39EF),
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                              'appTasks');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 20, 10, 0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 5, 5, 5),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(22),
                                                  child: Image.network(
                                                    'https://cdn1.iconfinder.com/data/icons/productivity-aesthetics-vol-2/256/To_Do_List-512.png',
                                                    width: 300,
                                                    height: 200,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    4.56, 4.43),
                                                child: AlignedTooltip(
                                                  content: Padding(
                                                    padding: EdgeInsets.all(4),
                                                    child: Text(
                                                      'Custom Tasks',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 12,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4,
                                                  tailBaseWidth: 24,
                                                  tailLength: 12,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration: Duration(
                                                      milliseconds: 100),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: Opacity(
                                                    opacity: 0,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.78, 4.1),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderRadius: 20,
                                                        borderWidth: 1,
                                                        buttonSize: 104,
                                                        fillColor:
                                                            Color(0x4C4B39EF),
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                              'customTasks');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 20, 0),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Opacity(
                                                opacity: 0.8,
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      child: Image.network(
                                                        'https://cdn-icons-png.flaticon.com/512/771/771223.png',
                                                        width: 300,
                                                        height: 180,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: AlignedTooltip(
                                                  content: Padding(
                                                    padding: EdgeInsets.all(4),
                                                    child: Text(
                                                      'Scoreboard',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 12,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4,
                                                  tailBaseWidth: 24,
                                                  tailLength: 12,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration: Duration(
                                                      milliseconds: 100),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: Opacity(
                                                    opacity: 0,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.56, 2.21),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderRadius: 20,
                                                        borderWidth: 1,
                                                        buttonSize: 106,
                                                        fillColor:
                                                            Color(0x4C4B39EF),
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                              'Scoreboard');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 0, 60),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(0),
                                              topRight: Radius.circular(0),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(6),
                                                  child: Image.network(
                                                    'https://t3.ftcdn.net/jpg/02/02/93/50/360_F_202935035_d4Ae3009lLNFSvll3I0MqkORbPE6sPuL.jpg',
                                                    width: double.infinity,
                                                    height: 200,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: AlignedTooltip(
                                                  content: Padding(
                                                    padding: EdgeInsets.all(4),
                                                    child: Text(
                                                      'Mood Log',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 12,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  offset: 4,
                                                  preferredDirection:
                                                      AxisDirection.down,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 4,
                                                  tailBaseWidth: 24,
                                                  tailLength: 12,
                                                  waitDuration:
                                                      Duration(milliseconds: 0),
                                                  showDuration: Duration(
                                                      milliseconds: 100),
                                                  triggerMode:
                                                      TooltipTriggerMode.tap,
                                                  child: Opacity(
                                                    opacity: 0.1,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.86, -0.53),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        borderRadius: 20,
                                                        borderWidth: 1,
                                                        buttonSize: 106,
                                                        fillColor:
                                                            Color(0xFFC96C44),
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24,
                                                        ),
                                                        onPressed: () async {
                                                          context.pushNamed(
                                                              'MoodLog');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 20, 10, 60),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  child: Image.network(
                                                    'https://www.gratefulness.me/favicon.png',
                                                    width: 288,
                                                    height: 200,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.2, -0.22),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(25, 0, 25, 0),
                                                  child: AlignedTooltip(
                                                    content: Padding(
                                                      padding:
                                                          EdgeInsets.all(4),
                                                      child: Text(
                                                        'Gratitude Journal',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    offset: 4,
                                                    preferredDirection:
                                                        AxisDirection.down,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    elevation: 4,
                                                    tailBaseWidth: 24,
                                                    tailLength: 12,
                                                    waitDuration: Duration(
                                                        milliseconds: 0),
                                                    showDuration: Duration(
                                                        milliseconds: 100),
                                                    triggerMode:
                                                        TooltipTriggerMode.tap,
                                                    child: Opacity(
                                                      opacity: 0.1,
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.07, -0.45),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          borderRadius: 20,
                                                          borderWidth: 1,
                                                          buttonSize: 40,
                                                          fillColor:
                                                              Color(0xFFC96C44),
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 24,
                                                          ),
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'GratitudeJournal');
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 20, 20, 60),
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(6, 0, 0, 0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      'https://thumb.ac-illust.com/df/df0e40840962f1955d49b0755c85913d_t.jpeg',
                                                      width: 300,
                                                      height: 200,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: AlignedTooltip(
                                                    content: Padding(
                                                      padding:
                                                          EdgeInsets.all(4),
                                                      child: Text(
                                                        'Quotes',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize: 12,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                    offset: 4,
                                                    preferredDirection:
                                                        AxisDirection.down,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                    elevation: 4,
                                                    tailBaseWidth: 24,
                                                    tailLength: 12,
                                                    waitDuration: Duration(
                                                        milliseconds: 0),
                                                    showDuration: Duration(
                                                        milliseconds: 100),
                                                    triggerMode:
                                                        TooltipTriggerMode.tap,
                                                    child: Opacity(
                                                      opacity: 0.1,
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.81, -0.46),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          borderRadius: 20,
                                                          borderWidth: 1,
                                                          buttonSize: 92,
                                                          fillColor:
                                                              Color(0xFFC96C44),
                                                          icon: Icon(
                                                            Icons.add,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 24,
                                                          ),
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'AssistantAi');
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Container(
                            width: double.infinity,
                            height: 48,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    'https://gobeyondsports.com/wp-content/uploads/2022/05/mindfulness-1024x512.webp',
                                    width: 300,
                                    height: 200,
                                    fit: BoxFit.fitHeight,
                                    alignment: Alignment(-1, 0),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        70, 0, 0, 0),
                                    child: Text(
                                      'Fitness and Mindfulness',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 18,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.2,
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderRadius: 20,
                                      borderWidth: 1,
                                      buttonSize: 375,
                                      fillColor: Color(0xFFC96C44),
                                      hoverColor: Color(0xFFC96C44),
                                      hoverIconColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      showLoadingIndicator: true,
                                      onPressed: () async {
                                        context.pushNamed('MeditationVideos');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.22),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Container(
                            width: 393,
                            height: 48,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40, 0, 0, 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        'https://cdn-icons-png.freepik.com/512/4472/4472584.png',
                                        width: 354,
                                        height: 200,
                                        fit: BoxFit.contain,
                                        alignment: Alignment(-1, 0),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.08, 0.21),
                                  child: Text(
                                    'Relaxing Music',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.2,
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderRadius: 20,
                                      borderWidth: 1,
                                      buttonSize: 368,
                                      fillColor: Color(0xFFC96C44),
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () async {
                                        context.pushNamed('AudioPage');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.41),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Container(
                            width: 415,
                            height: 48,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-0.78, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://cdn2.iconfinder.com/data/icons/social-media-agency-dazzle-vol-2/256/Success_Stories-512.png',
                                      width: 65,
                                      height: 200,
                                      fit: BoxFit.contain,
                                      alignment: Alignment(-1, 0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-0.08, 0.1),
                                  child: Text(
                                    'Success Stories',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 18,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w900,
                                        ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.2,
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      borderRadius: 20,
                                      borderWidth: 1,
                                      buttonSize: 366,
                                      fillColor: Color(0xFFC96C44),
                                      icon: Icon(
                                        Icons.add,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

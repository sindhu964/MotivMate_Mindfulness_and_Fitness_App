import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'app_tasks_model.dart';
export 'app_tasks_model.dart';

class AppTasksWidget extends StatefulWidget {
  const AppTasksWidget({super.key});

  @override
  State<AppTasksWidget> createState() => _AppTasksWidgetState();
}

class _AppTasksWidgetState extends State<AppTasksWidget> {
  late AppTasksModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppTasksModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFC96C44),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Tasks',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1, -1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Complete the predefined tasks to gain extra points..',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: StreamBuilder<List<AppTasksRecord>>(
                    stream: queryAppTasksRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<AppTasksRecord> listViewAppTasksRecordList =
                          snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAppTasksRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewAppTasksRecord =
                              listViewAppTasksRecordList[listViewIndex];
                          return Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ToggleIcon(
                                  onPressed: () async {
                                    await listViewAppTasksRecord.reference
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'completed':
                                              !listViewAppTasksRecord.completed,
                                        },
                                      ),
                                    });
                                  },
                                  value: listViewAppTasksRecord.completed,
                                  onIcon: Icon(
                                    Icons.check_box,
                                    color: Color(0xFFC96C44),
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.check_box_outline_blank,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 25,
                                  ),
                                ),
                                Text(
                                  listViewAppTasksRecord.name,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
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

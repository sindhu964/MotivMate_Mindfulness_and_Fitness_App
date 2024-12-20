import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'gratitude_journal_model.dart';
export 'gratitude_journal_model.dart';

class GratitudeJournalWidget extends StatefulWidget {
  const GratitudeJournalWidget({super.key});

  @override
  State<GratitudeJournalWidget> createState() => _GratitudeJournalWidgetState();
}

class _GratitudeJournalWidgetState extends State<GratitudeJournalWidget> {
  late GratitudeJournalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GratitudeJournalModel());
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
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30,
            borderWidth: 1,
            buttonSize: 60,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Text(
              'Gratitude Journal',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 50, 0, 0),
                child: Text(
                  'Enter what you are grateful for today and nurture positivity..',
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                child: Container(
                  width: 222,
                  height: 214,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/512/3221/3221593.png',
                              width: 300,
                              height: 410,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.9,
                        child: Align(
                          alignment: AlignmentDirectional(-0.1, -0.06),
                          child: FlutterFlowIconButton(
                            borderRadius: 20,
                            borderWidth: 1,
                            buttonSize: 64,
                            fillColor: Color(0xFFE1906D),
                            icon: Icon(
                              Icons.add,
                              color: Color(0xFF3B444B),
                              size: 50,
                            ),
                            onPressed: () async {
                              context.pushNamed('GratutitePage');
                            },
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

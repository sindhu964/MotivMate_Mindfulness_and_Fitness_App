import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'mood_log_model.dart';
export 'mood_log_model.dart';

class MoodLogWidget extends StatefulWidget {
  const MoodLogWidget({
    super.key,
    this.mood,
  });

  final String? mood;

  @override
  State<MoodLogWidget> createState() => _MoodLogWidgetState();
}

class _MoodLogWidgetState extends State<MoodLogWidget> {
  late MoodLogModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoodLogModel());

    _model.moodTextController ??= TextEditingController();
    _model.moodFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
              'Mood Log',
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
              Align(
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 50, 0, 0),
                  child: Text(
                    'How do you feel today?',
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 16,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: 139,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10, 20, 340, 60),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrmGItxw8j6v_xQyDblH1wC9kvwqnUw3Plqcwzv4N9WjoXNIfAYaCazmwvHs1AjPS0x94&usqp=CAU',
                            width: 139,
                            height: 200,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.93, -0.37),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://publicdomainvectors.org/tn_img/Arnoud999-Right-or-wrong-3.webp',
                            width: 48,
                            height: 44,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Slider(
                            activeColor: Color(0xFFB47055),
                            inactiveColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            min: 0,
                            max: 10,
                            value: _model.sliderValue ??= 5,
                            onChanged: (newValue) {
                              newValue =
                                  double.parse(newValue.toStringAsFixed(2));
                              safeSetState(() => _model.sliderValue = newValue);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 30, 10, 0),
                      child: TextFormField(
                        controller: _model.moodTextController,
                        focusNode: _model.moodFocusNode,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Reflect on your mood...',
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFA76346),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFD09174),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          errorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedErrorBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                        validator: _model.moodTextControllerValidator
                            .asValidator(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 35, 0, 0),
                    child: Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??= false,
                        onChanged: (newValue) async {
                          safeSetState(() => _model.checkboxValue = newValue!);
                          if (newValue!) {
                            await MoodLogRecord.collection.doc().set({
                              ...mapToFirestore(
                                {
                                  'mood': [_model.moodTextController.text],
                                },
                              ),
                            });
                          }
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: Color(0xFFC96C44),
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(1, 1),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 200, 10, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('AssistantAi');
                    },
                    text: 'Assistant Ai',
                    options: FFButtonOptions(
                      height: 35,
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
                      borderRadius: BorderRadius.circular(24),
                    ),
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

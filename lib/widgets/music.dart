import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'audio_page_model.dart';
export 'audio_page_model.dart';

class AudioPageWidget extends StatefulWidget {
  const AudioPageWidget({super.key});

  @override
  State<AudioPageWidget> createState() => _AudioPageWidgetState();
}

class _AudioPageWidgetState extends State<AudioPageWidget> {
  late AudioPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPageModel());
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
          backgroundColor: Color(0xFFD1896A),
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
              'Music Corner',
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
          child: SingleChildScrollView(
            primary: false,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 225,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://images.unsplash.com/uploads/1413395496082cbc91228/43e39040?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyMXx8cGVhY2V8ZW58MHx8fHwxNzE5OTQyMTQyfDA&ixlib=rb-4.0.3&q=80&w=1080',
                            width: double.infinity,
                            height: 233,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/Calm-and-Peaceful(chosic.com).mp3',
                    metas: Metas(
                      id: 'Calm-and-Peaceful(chosic.com).mp3-741dc5b9',
                      title: 'Calm and Peaceful',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: Color(0xFFC96C44),
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 195,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1422205512921-12dac7b3b603?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxwZWFjZXxlbnwwfHx8fDE3MTk5NDIxNDJ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/perfect-beauty-191271_(1).mp3',
                    metas: Metas(
                      id: 'perfect-beauty-191271_(1).mp3-e9d84f45',
                      title: 'Perfect Beauty',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: Color(0xFFC96C44),
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/872/600',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/2019-04-26_-_Tranquility_-_www.fesliyanstudios.com.mp3',
                    metas: Metas(
                      id: '2019-04-26_-_Tranquility_-_www.fesliyanstudios.com.mp3-ebf771b7',
                      title: 'Tranquility',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: Color(0xFFC96C44),
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/380/600',
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio(
                    'assets/audios/2019-12-13_-_In_The_Light_-_FesliyanStudios.com_-_David_Renda.mp3',
                    metas: Metas(
                      id: '2019-12-13_-_In_The_Light_-_FesliyanStudios.com_-_David_Renda.mp3-bd1e124b',
                      title: 'In The Light',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: Color(0xFFC96C44),
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4,
                  playInBackground:
                      PlayInBackground.disabledRestoreOnForeground,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

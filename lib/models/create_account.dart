import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'create_widget.dart' show CreateWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateModel extends FlutterFlowModel<CreateWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for cpass widget.
  FocusNode? cpassFocusNode;
  TextEditingController? cpassTextController;
  late bool cpassVisibility;
  String? Function(BuildContext, String?)? cpassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    cpassVisibility = false;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    cpassFocusNode?.dispose();
    cpassTextController?.dispose();
  }
}

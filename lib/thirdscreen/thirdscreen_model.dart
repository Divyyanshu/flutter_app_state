import '/components/dropdown_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'thirdscreen_widget.dart' show ThirdscreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ThirdscreenModel extends FlutterFlowModel<ThirdscreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for dropdown component.
  late DropdownModel dropdownModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dropdownModel = createModel(context, () => DropdownModel());
  }

  void dispose() {
    unfocusNode.dispose();
    dropdownModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

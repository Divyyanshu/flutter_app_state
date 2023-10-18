import '/components/dropdown_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'thirdscreen_model.dart';
export 'thirdscreen_model.dart';

class ThirdscreenWidget extends StatefulWidget {
  const ThirdscreenWidget({
    Key? key,
    required this.dropdowndata,
  }) : super(key: key);

  final String? dropdowndata;

  @override
  _ThirdscreenWidgetState createState() => _ThirdscreenWidgetState();
}

class _ThirdscreenWidgetState extends State<ThirdscreenWidget> {
  late ThirdscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ThirdscreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: wrapWithModel(
              model: _model.dropdownModel,
              updateCallback: () => setState(() {}),
              child: DropdownWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

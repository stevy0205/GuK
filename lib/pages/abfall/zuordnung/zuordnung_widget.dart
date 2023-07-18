import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'zuordnung_model.dart';
export 'zuordnung_model.dart';

class ZuordnungWidget extends StatefulWidget {
  const ZuordnungWidget({Key? key}) : super(key: key);

  @override
  _ZuordnungWidgetState createState() => _ZuordnungWidgetState();
}

class _ZuordnungWidgetState extends State<ZuordnungWidget> {
  late ZuordnungModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ZuordnungModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF6DA6ED),
        appBar: AppBar(
          backgroundColor: Color(0xFF0865AD),
          automaticallyImplyLeading: false,
          title: Text(
            'Abfall Zuordnungsspiel! Wähle ein Abfallprodukt und entscheide wie es einzuordnen ist!',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.9, -0.1),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic3chosen = true;
                      FFAppState().pic3Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic3chosen = false;
                      FFAppState().pic3Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic3Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Reagenzglser_R.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Reagenzgläser',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.45, 0.6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic6chosen = true;
                      FFAppState().pic6Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic6chosen = false;
                      FFAppState().pic6Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic6Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Lsungsmittel_SS.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Lösungsmittel',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, -0.8),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic1chosen = true;
                      FFAppState().pic1Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic1chosen = false;
                      FFAppState().pic1Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic1Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Chemikalien_SS.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Chemikalien',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.95, 0.6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().nonRecycleChosen = true;
                      FFAppState().nonRecycleColor =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().nonRecycleChosen = false;
                      FFAppState().nonRecycleColor = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    decoration: BoxDecoration(
                      color: FFAppState().nonRecycleColor,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/nicht_recyclebar.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'nicht recyclebar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.45, -0.1),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic4chosen = true;
                      FFAppState().pic4Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic4chosen = false;
                      FFAppState().pic4Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic4Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Verpackun_R.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Verpackung',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic5chosen = true;
                      FFAppState().pic5Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic5chosen = false;
                      FFAppState().pic5Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic5Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Maske_NR.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'Maske',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, -0.6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().recycleChosen = true;
                      FFAppState().recycleColor =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().recycleChosen = false;
                      FFAppState().recycleColor = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    decoration: BoxDecoration(
                      color: FFAppState().recycleColor,
                    ),
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/recyclebar.png',
                                width: MediaQuery.sizeOf(context).width * 0.9,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'recyclebar',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.55, 0.6),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().sonderAbfallChosen = true;
                      FFAppState().sonderColor =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().sonderAbfallChosen = false;
                      FFAppState().sonderColor = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.3,
                    decoration: BoxDecoration(
                      color: FFAppState().sonderColor,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/schadstoffe.jfif',
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'Sonderabfall',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.45, -0.8),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().pic2chosen = true;
                      FFAppState().pic2Color =
                          FlutterFlowTheme.of(context).warning;
                    });
                  },
                  onDoubleTap: () async {
                    setState(() {
                      FFAppState().pic2chosen = false;
                      FFAppState().pic2Color = Color(0xFF0865AD);
                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 0.15,
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    decoration: BoxDecoration(
                      color: FFAppState().pic2Color,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 15.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/OP_Kittel_NR.jfif',
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.15,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          child: Text(
                            'OP-Kittel',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.15, 0.2),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (FFAppState().pic1chosen &&
                        FFAppState().sonderAbfallChosen &&
                        !FFAppState().pic1Solved) {
                      setState(() {
                        FFAppState().pic1Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().sonderColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().sonderAbfallChosen = false;
                        FFAppState().pic1Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic2chosen &&
                        FFAppState().nonRecycleChosen &&
                        !FFAppState().pic2Solved) {
                      setState(() {
                        FFAppState().pic2Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().nonRecycleColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().nonRecycleChosen = false;
                        FFAppState().pic2Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic3chosen &&
                        FFAppState().recycleChosen &&
                        !FFAppState().pic3Solved) {
                      setState(() {
                        FFAppState().pic3Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().recycleColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().recycleChosen = false;
                        FFAppState().pic3Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic4chosen &&
                        FFAppState().recycleChosen &&
                        !FFAppState().pic4Solved) {
                      setState(() {
                        FFAppState().pic4Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().recycleColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().recycleChosen = false;
                        FFAppState().pic4Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic5chosen &&
                        FFAppState().nonRecycleChosen &&
                        !FFAppState().pic5Solved) {
                      setState(() {
                        FFAppState().pic5Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().nonRecycleColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().nonRecycleChosen = false;
                        FFAppState().pic5Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic6chosen &&
                        FFAppState().sonderAbfallChosen &&
                        !FFAppState().pic6Solved) {
                      setState(() {
                        FFAppState().pic6Color =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().sonderColor =
                            FlutterFlowTheme.of(context).success;
                        FFAppState().sonderAbfallChosen = false;
                        FFAppState().pic6Solved = true;
                      });
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Korrekt!';
                      });
                    } else if (FFAppState().pic1Solved &&
                        FFAppState().pic2Solved &&
                        FFAppState().pic3Solved &&
                        FFAppState().pic4Solved &&
                        FFAppState().pic5Solved &&
                        FFAppState().pic6Solved) {
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung = 'Gewonnen!';
                      });
                    } else {
                      setState(() {
                        FFAppState().abfallZuordnungAuswertung =
                            'Probiers nochmal :(';
                      });
                    }
                  },
                  text: 'Überprüfe',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF0865AD),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.2, -0.1),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  height: MediaQuery.sizeOf(context).height * 0.05,
                  decoration: BoxDecoration(
                    color: Color(0xFF0865AD),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFAppState().abfallZuordnungAuswertung,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Klicke auf eine Karte um sie auszuwählen! Doppelklick auf eine Karte um die Markierung aufzuheben',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.9),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF0865AD),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Home');
                              },
                              text: 'Home',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF39D2C0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('KlimaOverview');
                              },
                              text: 'Zurück zur Themenauswahl',
                              options: FFButtonOptions(
                                width: 300.0,
                                height: 40.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF0865AD),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('AbfallmanagementKH');
                        },
                        text: 'Zu Abfallmanagement',
                        options: FFButtonOptions(
                          width: 300.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF0865AD),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
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

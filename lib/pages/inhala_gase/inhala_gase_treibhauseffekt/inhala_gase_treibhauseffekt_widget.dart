import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inhala_gase_treibhauseffekt_model.dart';
export 'inhala_gase_treibhauseffekt_model.dart';

class InhalaGaseTreibhauseffektWidget extends StatefulWidget {
  const InhalaGaseTreibhauseffektWidget({Key? key}) : super(key: key);

  @override
  _InhalaGaseTreibhauseffektWidgetState createState() =>
      _InhalaGaseTreibhauseffektWidgetState();
}

class _InhalaGaseTreibhauseffektWidgetState
    extends State<InhalaGaseTreibhauseffektWidget> {
  late InhalaGaseTreibhauseffektModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InhalaGaseTreibhauseffektModel());

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
            'Inhalative Gase - Treibhauseffekt',
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
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: FlipCard(
                              fill: Fill.fillBack,
                              direction: FlipDirection.HORIZONTAL,
                              speed: 400,
                              front: Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.6,
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0865AD),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 0.0),
                                        child: Text(
                                          'Inhalative Anästhetika als Treibhausgase:              \n\nWie viel ein Treibhausgas zur Erderwärmung über einen bestimmten Zeitraum beiträgt hängt von folgenden Faktoren ab:\n\n- atmosphärische Lebensdauer des Treibhausgases\n\n- Absorptionskraft über die gesamte atmosphärische Lebensdauer\n\n- Wellenlänge, auf der das Treibhausgas absorbiert. Es ist umso potenter, je weniger es in demselben Infrarotspektrum der natürlichen Treibhausgase Wasserdampf und CO2 absorbiert',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              back: Container(
                                width: MediaQuery.sizeOf(context).width * 0.6,
                                height: MediaQuery.sizeOf(context).height * 0.6,
                                decoration: BoxDecoration(
                                  color: Color(0xFF0865AD),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 20.0, 20.0, 20.0),
                                    child: Text(
                                      'Inhalative Anästhetika als Treibhausgase:\n\nAlle volatilen Anästhetika sind halogenierte Kohlenwasserstoffe und damit hochpotente Treibhausgase. Isofluran und sein Enantiomer Enfluran enthalten ein Chloratom und sind damit Fluorchlorkohlenwasserstoffe (FCKW), genau wie Halothan, das zusätzlich ein Bromatom enthält. Durch ihr Chloratom haben FCKW-Substanzen außerdem eine ozondepletierende Wirkung. Sevofluran und Desfluran dagegen sind Fluorkohlenwasserstoffe (FKW).\n\nWie viel ein Treibhausgas zur Erderwärmung über einen bestimmten Zeitraum beiträgt, wird mithilfe der Global Warming Potenz (GWP) angegeben, wobei CO2 für diese Angaben als Bezugsgröße dient. Übliche Zeitspannen beziehen sich auf 20 oder 100 Jahre, dann als GWP20 und GWP100 bezeichnet. Die GWP eines Gases hängt von folgenden Faktoren ab:\n\n- atmosphärische Lebensdauer des Treibhausgases\n\n- Absorptionskraft über die gesamte atmosphärische Lebensdauer\n\n- Wellenlänge, auf der das Treibhausgas absorbiert\n- Es ist umso potenter, je weniger es in demselben Infrarotspektrum der \nnatürlichen Treibhausgase Wasserdampf und CO2 absorbiert',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 50.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.75),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    width: 400.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0865AD),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('Home');
                                          },
                                          text: 'Home',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF39D2C0),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
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
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed('KlimaOverview');
                                          },
                                          text: 'Zurück',
                                          options: FFButtonOptions(
                                            width: 300.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: Color(0xFF0865AD),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color: Colors.white,
                                                    ),
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
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
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.1),
                    child: Image.asset(
                      'assets/images/ezgif.com-gif-maker_(5).gif',
                      width: MediaQuery.sizeOf(context).width * 0.104,
                      height: MediaQuery.sizeOf(context).height * 0.338,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.92, 0.55),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Bild_14.06.23_um_12.08.jpg',
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    height: MediaQuery.sizeOf(context).height * 0.4,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.75),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.4,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: BoxDecoration(
                    color: Color(0xFF0865AD),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 5.0, 0.0),
                      child: Text(
                        '- Deutschland: 2012 bei ca. 7 Mio. Operationen inhalative Anästhetika eingesetzt\n- Weltweit 2014: ein Kohlendioxidäquivalent von 3 Mio. Tonnen durch volatile Anästhetika\n- 80 % allein durch Desfluran\n- Desfluran hat von allen volatilen Anästhetika den größten Einfluss auf die Erderwärmung',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.05, -0.95),
                child: Text(
                  'Flip Me!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
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

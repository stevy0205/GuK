import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hitze_geburtenrate_video_model.dart';
export 'hitze_geburtenrate_video_model.dart';

class HitzeGeburtenrateVideoWidget extends StatefulWidget {
  const HitzeGeburtenrateVideoWidget({Key? key}) : super(key: key);

  @override
  _HitzeGeburtenrateVideoWidgetState createState() =>
      _HitzeGeburtenrateVideoWidgetState();
}

class _HitzeGeburtenrateVideoWidgetState
    extends State<HitzeGeburtenrateVideoWidget> {
  late HitzeGeburtenrateVideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HitzeGeburtenrateVideoModel());

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
          leading: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Zurück',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Hitze-Geburtenrate Video',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
            ),
          ),
          actions: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('GameOverview');
                },
                child: Text(
                  '\nHome',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                ),
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowVideoPlayer(
              path: 'assets/videos/HitzeGeburtenrateVideo.mp4',
              videoType: VideoType.asset,
              autoPlay: false,
              looping: false,
              showControls: true,
              allowFullScreen: true,
              allowPlaybackSpeedMenu: false,
            ),
          ),
        ),
      ),
    );
  }
}

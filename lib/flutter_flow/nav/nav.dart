import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../flutter_flow_theme.dart';
import '/backend/backend.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => HomeWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomeWidget(),
        ),
        FFRoute(
          name: 'Quiz_Hitze',
          path: '/quizHitze',
          builder: (context, params) => QuizHitzeWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => HomeWidget(),
        ),
        FFRoute(
          name: 'Memory',
          path: '/memory',
          builder: (context, params) => MemoryWidget(),
        ),
        FFRoute(
          name: 'KlimaOverview',
          path: '/klimaOverview',
          builder: (context, params) => KlimaOverviewWidget(),
        ),
        FFRoute(
          name: 'Hitze-Geburtenrate',
          path: '/KlimaOverviewCopy',
          builder: (context, params) => HitzeGeburtenrateWidget(),
        ),
        FFRoute(
          name: 'Hitze-Tiere',
          path: '/Hitze-Tiere',
          builder: (context, params) => HitzeTiereWidget(),
        ),
        FFRoute(
          name: 'Hitze-Lebensmittel',
          path: '/Hitze-Lebensmittel',
          builder: (context, params) => HitzeLebensmittelWidget(),
        ),
        FFRoute(
          name: 'Hitze-Infektionen',
          path: '/Hitze-Infektionen',
          builder: (context, params) => HitzeInfektionenWidget(),
        ),
        FFRoute(
          name: 'Hitze-MentalHealth',
          path: '/Hitze-MentalHealth',
          builder: (context, params) => HitzeMentalHealthWidget(),
        ),
        FFRoute(
          name: 'Hitze-Mortalitaet',
          path: '/Hitze-Mortalitaet',
          builder: (context, params) => HitzeMortalitaetWidget(),
        ),
        FFRoute(
          name: 'Hitze-DirIndirFolgen',
          path: '/Hitze-DirIndirFolgen',
          builder: (context, params) => HitzeDirIndirFolgenWidget(),
        ),
        FFRoute(
          name: 'AntwortHitze',
          path: '/antwortHitze',
          builder: (context, params) => AntwortHitzeWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Ergebniss',
          path: '/ergebniss',
          builder: (context, params) => ErgebnissWidget(
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Hitze-Generell',
          path: '/Hitze-Generell',
          builder: (context, params) => HitzeGenerellWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Generell',
          path: '/Naturkatastrophen-Generell',
          builder: (context, params) => NaturkatastrophenGenerellWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Geburtenrate',
          path: '/Naturkatastrophen-Geburtenrate',
          builder: (context, params) => NaturkatastrophenGeburtenrateWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Tiere',
          path: '/Naturkatastrophen-Tiere',
          builder: (context, params) => NaturkatastrophenTiereWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Infektionen',
          path: '/Naturkatastrophen-Infektionen',
          builder: (context, params) => NaturkatastrophenInfektionenWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-MentalHealth',
          path: '/Naturkatastrophen-Mentalhealth',
          builder: (context, params) => NaturkatastrophenMentalHealthWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Mortalitt',
          path: '/Naturkatastrophen-Mortalitt',
          builder: (context, params) => NaturkatastrophenMortalittWidget(),
        ),
        FFRoute(
          name: 'Naturkatastrophen-Folgen',
          path: '/Naturkatastrophen-Folgen',
          builder: (context, params) => NaturkatastrophenFolgenWidget(),
        ),
        FFRoute(
          name: 'CO2Generell',
          path: '/CO2Generell',
          builder: (context, params) => CO2GenerellWidget(),
        ),
        FFRoute(
          name: 'CO2-Tiere',
          path: '/CO2-Tiere',
          builder: (context, params) => CO2TiereWidget(),
        ),
        FFRoute(
          name: 'SlidePuzzle',
          path: '/slidePuzzle',
          builder: (context, params) => SlidePuzzleWidget(),
        ),
        FFRoute(
          name: 'InhalaGase-Treibhauseffekt',
          path: '/InhalaGase-Treibhauseffekt',
          builder: (context, params) => InhalaGaseTreibhauseffektWidget(),
        ),
        FFRoute(
          name: 'KlimaneutralesKrankenhaus',
          path: '/KlimaneutralesKH',
          builder: (context, params) => KlimaneutralesKrankenhausWidget(),
        ),
        FFRoute(
          name: 'Fussabdruck-CO2',
          path: '/Fussabdruck-CO2',
          builder: (context, params) => FussabdruckCO2Widget(),
        ),
        FFRoute(
          name: 'AbfallmanagementKH',
          path: '/Abfall',
          builder: (context, params) => AbfallmanagementKHWidget(),
        ),
        FFRoute(
          name: 'Fussabdruck-Treibhauseffekt',
          path: '/Fussabdruck-Treibhauseffekt',
          builder: (context, params) => FussabdruckTreibhauseffektWidget(),
        ),
        FFRoute(
          name: 'Quiz_Geburt',
          path: '/quizGeburt',
          builder: (context, params) => QuizGeburtWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'AntwortGeburt',
          path: '/antwortGeburt',
          builder: (context, params) => AntwortGeburtWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'GameOverview',
          path: '/gameOverview',
          builder: (context, params) => GameOverviewWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement-Reduce',
          path: '/Abfallmanagement-Reduce',
          builder: (context, params) => AbfallmanagementReduceWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement-Reuse',
          path: '/Abfallmanagement-Reuse',
          builder: (context, params) => AbfallmanagementReuseWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement-Recycle',
          path: '/Abfallmanagement-Recycle',
          builder: (context, params) => AbfallmanagementRecycleWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement-Rethink',
          path: '/Abfallmanagement-Rethink',
          builder: (context, params) => AbfallmanagementRethinkWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement-Research',
          path: '/Abfallmanagemen-Research',
          builder: (context, params) => AbfallmanagementResearchWidget(),
        ),
        FFRoute(
          name: 'Zuordnung',
          path: '/zuordnung',
          builder: (context, params) => ZuordnungWidget(),
        ),
        FFRoute(
          name: 'AntwortKlimaAufGesundheit',
          path: '/antwortKlimaAufGesundheit',
          builder: (context, params) => AntwortKlimaAufGesundheitWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'AntwortKHGW',
          path: '/antwortKHGW',
          builder: (context, params) => AntwortKHGWWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'AntwortMental',
          path: '/antwortMental',
          builder: (context, params) => AntwortMentalWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'AntwortNaturkatastropen',
          path: '/antwortNaturkatastrope',
          builder: (context, params) => AntwortNaturkatastropenWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'AntwortTiere',
          path: '/antwortTiere',
          builder: (context, params) => AntwortTiereWidget(
            index: params.getParam('index', ParamType.int),
            answer: params.getParam('answer', ParamType.String),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Quiz_KlimaAufGesundheit',
          path: '/quizKlimaAufGesundheit',
          builder: (context, params) => QuizKlimaAufGesundheitWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Quiz_KHGW',
          path: '/quizKHGW',
          builder: (context, params) => QuizKHGWWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Quiz_Mental',
          path: '/quizMental',
          builder: (context, params) => QuizMentalWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Quiz_Tiere',
          path: '/quizTiere',
          builder: (context, params) => QuizTiereWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Quiz_Naturkatastrophen',
          path: '/quizNaturkatastrophen',
          builder: (context, params) => QuizNaturkatastrophenWidget(
            index: params.getParam('index', ParamType.int),
            score: params.getParam('score', ParamType.int),
          ),
        ),
        FFRoute(
          name: 'Tsunamis-Mortalitaet',
          path: '/Tsunamis-Mortalitt',
          builder: (context, params) => TsunamisMortalitaetWidget(),
        ),
        FFRoute(
          name: 'Waldbrnde-Mortalitaet',
          path: '/Waldbrnde-Mortalitt',
          builder: (context, params) => WaldbrndeMortalitaetWidget(),
        ),
        FFRoute(
          name: 'CO2-Lebensmittel',
          path: '/CO2-Lebensmittel',
          builder: (context, params) => CO2LebensmittelWidget(),
        ),
        FFRoute(
          name: 'CO2-Mortalitaet',
          path: '/CO2-Mortalitaet',
          builder: (context, params) => CO2MortalitaetWidget(),
        ),
        FFRoute(
          name: 'Videos',
          path: '/videos',
          builder: (context, params) => VideosWidget(),
        ),
        FFRoute(
          name: 'HitzeVideos',
          path: '/hitzeVideos',
          builder: (context, params) => HitzeVideosWidget(),
        ),
        FFRoute(
          name: 'HitzeVideos2',
          path: '/hitzeVideos2',
          builder: (context, params) => HitzeVideos2Widget(),
        ),
        FFRoute(
          name: 'NaturkatastrophenUndInfektionen',
          path: '/naturkatastrophenUndInfektionen',
          builder: (context, params) => NaturkatastrophenUndInfektionenWidget(),
        ),
        FFRoute(
          name: 'NaturkatastrophenGenerellVideo',
          path: '/naturkatastrophenGenerellVideo',
          builder: (context, params) => NaturkatastrophenGenerellVideoWidget(),
        ),
        FFRoute(
          name: 'CO2TiereVideo',
          path: '/cO2TiereVideo',
          builder: (context, params) => CO2TiereVideoWidget(),
        ),
        FFRoute(
          name: 'NaturkatastrophenGeburtenrateVideo',
          path: '/naturkatastrophenGeburtenrateVideo',
          builder: (context, params) =>
              NaturkatastrophenGeburtenrateVideoWidget(),
        ),
        FFRoute(
          name: 'NaturkatastrophenTiereVideo',
          path: '/naturkatastrophenTiereVideo',
          builder: (context, params) => NaturkatastrophenTiereVideoWidget(),
        ),
        FFRoute(
          name: 'HitzeTiereVideo',
          path: '/hitzeTiereVideo',
          builder: (context, params) => HitzeTiereVideoWidget(),
        ),
        FFRoute(
          name: 'HitzeGeburtenrateVideo',
          path: '/hitzeGeburtenrateVideo',
          builder: (context, params) => HitzeGeburtenrateVideoWidget(),
        ),
        FFRoute(
          name: 'CO2AllgemeinVideo',
          path: '/cO2AllgemeinVideo',
          builder: (context, params) => CO2AllgemeinVideoWidget(),
        ),
        FFRoute(
          name: 'OekologischerFussabdruckVideo',
          path: '/oekologischerFussabdruckVideo',
          builder: (context, params) => OekologischerFussabdruckVideoWidget(),
        ),
        FFRoute(
          name: 'AbfallmanagementKHVideo',
          path: '/abfallmanagementKHVideo',
          builder: (context, params) => AbfallmanagementKHVideoWidget(),
        ),
        FFRoute(
          name: 'Abfallmanagement5RsVideo',
          path: '/abfallmanagement5RsVideo',
          builder: (context, params) => Abfallmanagement5RsVideoWidget(),
        ),
        FFRoute(
          name: 'AnastaetikaVideo',
          path: '/anastaetikaVideo',
          builder: (context, params) => AnastaetikaVideoWidget(),
        ),
        FFRoute(
          name: 'KlimaneutraleKHVideo',
          path: '/klimaneutraleKHVideo',
          builder: (context, params) => KlimaneutraleKHVideoWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

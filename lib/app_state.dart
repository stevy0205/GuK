import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _card2Flipped = false;
  bool get card2Flipped => _card2Flipped;
  set card2Flipped(bool _value) {
    _card2Flipped = _value;
  }

  bool _card5Flipped = false;
  bool get card5Flipped => _card5Flipped;
  set card5Flipped(bool _value) {
    _card5Flipped = _value;
  }

  Color _checkButtonColor = Color(4281979584);
  Color get checkButtonColor => _checkButtonColor;
  set checkButtonColor(Color _value) {
    _checkButtonColor = _value;
  }

  bool _card1flipped = false;
  bool get card1flipped => _card1flipped;
  set card1flipped(bool _value) {
    _card1flipped = _value;
  }

  bool _card3flipped = false;
  bool get card3flipped => _card3flipped;
  set card3flipped(bool _value) {
    _card3flipped = _value;
  }

  bool _card4flipped = false;
  bool get card4flipped => _card4flipped;
  set card4flipped(bool _value) {
    _card4flipped = _value;
  }

  bool _card10flipped = false;
  bool get card10flipped => _card10flipped;
  set card10flipped(bool _value) {
    _card10flipped = _value;
  }

  bool _card6flipped = false;
  bool get card6flipped => _card6flipped;
  set card6flipped(bool _value) {
    _card6flipped = _value;
  }

  bool _card7flipped = false;
  bool get card7flipped => _card7flipped;
  set card7flipped(bool _value) {
    _card7flipped = _value;
  }

  bool _card8flipped = false;
  bool get card8flipped => _card8flipped;
  set card8flipped(bool _value) {
    _card8flipped = _value;
  }

  bool _card9flipped = false;
  bool get card9flipped => _card9flipped;
  set card9flipped(bool _value) {
    _card9flipped = _value;
  }

  bool _card11flipped = false;
  bool get card11flipped => _card11flipped;
  set card11flipped(bool _value) {
    _card11flipped = _value;
  }

  bool _card12flipped = false;
  bool get card12flipped => _card12flipped;
  set card12flipped(bool _value) {
    _card12flipped = _value;
  }

  String _checkedStatus = ' ';
  String get checkedStatus => _checkedStatus;
  set checkedStatus(String _value) {
    _checkedStatus = _value;
  }

  bool _pair2and5isSolved = false;
  bool get pair2and5isSolved => _pair2and5isSolved;
  set pair2and5isSolved(bool _value) {
    _pair2and5isSolved = _value;
  }

  bool _pair1and7isSolved = false;
  bool get pair1and7isSolved => _pair1and7isSolved;
  set pair1and7isSolved(bool _value) {
    _pair1and7isSolved = _value;
  }

  bool _pair3and10isSolved = false;
  bool get pair3and10isSolved => _pair3and10isSolved;
  set pair3and10isSolved(bool _value) {
    _pair3and10isSolved = _value;
  }

  bool _pair4and12isSolved = false;
  bool get pair4and12isSolved => _pair4and12isSolved;
  set pair4and12isSolved(bool _value) {
    _pair4and12isSolved = _value;
  }

  bool _pair6and8isSolved = false;
  bool get pair6and8isSolved => _pair6and8isSolved;
  set pair6and8isSolved(bool _value) {
    _pair6and8isSolved = _value;
  }

  int _moves = 0;
  int get moves => _moves;
  set moves(int _value) {
    _moves = _value;
  }

  bool _isStarted = false;
  bool get isStarted => _isStarted;
  set isStarted(bool _value) {
    _isStarted = _value;
  }

  List<int> _boardNumbers = [];
  List<int> get boardNumbers => _boardNumbers;
  set boardNumbers(List<int> _value) {
    _boardNumbers = _value;
  }

  void addToBoardNumbers(int _value) {
    _boardNumbers.add(_value);
  }

  void removeFromBoardNumbers(int _value) {
    _boardNumbers.remove(_value);
  }

  void removeAtIndexFromBoardNumbers(int _index) {
    _boardNumbers.removeAt(_index);
  }

  void updateBoardNumbersAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _boardNumbers[_index] = updateFn(_boardNumbers[_index]);
  }

  bool _showContainer1 = false;
  bool get showContainer1 => _showContainer1;
  set showContainer1(bool _value) {
    _showContainer1 = _value;
  }

  Color _card2and5color = Color(4285376237);
  Color get card2and5color => _card2and5color;
  set card2and5color(Color _value) {
    _card2and5color = _value;
  }

  Color _card1and7color = Color(4285376237);
  Color get card1and7color => _card1and7color;
  set card1and7color(Color _value) {
    _card1and7color = _value;
  }

  Color _card3and10color = Color(4285376237);
  Color get card3and10color => _card3and10color;
  set card3and10color(Color _value) {
    _card3and10color = _value;
  }

  Color _card4and12color = Color(4285376237);
  Color get card4and12color => _card4and12color;
  set card4and12color(Color _value) {
    _card4and12color = _value;
  }

  Color _card6and8color = Color(4285376237);
  Color get card6and8color => _card6and8color;
  set card6and8color(Color _value) {
    _card6and8color = _value;
  }

  bool _pic1chosen = false;
  bool get pic1chosen => _pic1chosen;
  set pic1chosen(bool _value) {
    _pic1chosen = _value;
  }

  bool _pic5chosen = false;
  bool get pic5chosen => _pic5chosen;
  set pic5chosen(bool _value) {
    _pic5chosen = _value;
  }

  bool _pic2chosen = false;
  bool get pic2chosen => _pic2chosen;
  set pic2chosen(bool _value) {
    _pic2chosen = _value;
  }

  bool _pic3chosen = false;
  bool get pic3chosen => _pic3chosen;
  set pic3chosen(bool _value) {
    _pic3chosen = _value;
  }

  bool _pic4chosen = false;
  bool get pic4chosen => _pic4chosen;
  set pic4chosen(bool _value) {
    _pic4chosen = _value;
  }

  bool _pic6chosen = false;
  bool get pic6chosen => _pic6chosen;
  set pic6chosen(bool _value) {
    _pic6chosen = _value;
  }

  bool _recycleChosen = false;
  bool get recycleChosen => _recycleChosen;
  set recycleChosen(bool _value) {
    _recycleChosen = _value;
  }

  bool _nonRecycleChosen = false;
  bool get nonRecycleChosen => _nonRecycleChosen;
  set nonRecycleChosen(bool _value) {
    _nonRecycleChosen = _value;
  }

  bool _sonderAbfallChosen = false;
  bool get sonderAbfallChosen => _sonderAbfallChosen;
  set sonderAbfallChosen(bool _value) {
    _sonderAbfallChosen = _value;
  }

  String _abfallZuordnungAuswertung = 'Wähle aus';
  String get abfallZuordnungAuswertung => _abfallZuordnungAuswertung;
  set abfallZuordnungAuswertung(String _value) {
    _abfallZuordnungAuswertung = _value;
  }

  Color _pic1Color = Color(4278740397);
  Color get pic1Color => _pic1Color;
  set pic1Color(Color _value) {
    _pic1Color = _value;
  }

  Color _pic2Color = Color(4278740397);
  Color get pic2Color => _pic2Color;
  set pic2Color(Color _value) {
    _pic2Color = _value;
  }

  Color _pic3Color = Color(4278740397);
  Color get pic3Color => _pic3Color;
  set pic3Color(Color _value) {
    _pic3Color = _value;
  }

  Color _pic4Color = Color(4278740397);
  Color get pic4Color => _pic4Color;
  set pic4Color(Color _value) {
    _pic4Color = _value;
  }

  Color _pic5Color = Color(4278740397);
  Color get pic5Color => _pic5Color;
  set pic5Color(Color _value) {
    _pic5Color = _value;
  }

  Color _pic6Color = Color(4278740397);
  Color get pic6Color => _pic6Color;
  set pic6Color(Color _value) {
    _pic6Color = _value;
  }

  Color _recycleColor = Color(4278740397);
  Color get recycleColor => _recycleColor;
  set recycleColor(Color _value) {
    _recycleColor = _value;
  }

  Color _nonRecycleColor = Color(4278740397);
  Color get nonRecycleColor => _nonRecycleColor;
  set nonRecycleColor(Color _value) {
    _nonRecycleColor = _value;
  }

  Color _sonderColor = Color(4278740397);
  Color get sonderColor => _sonderColor;
  set sonderColor(Color _value) {
    _sonderColor = _value;
  }

  bool _pic1Solved = false;
  bool get pic1Solved => _pic1Solved;
  set pic1Solved(bool _value) {
    _pic1Solved = _value;
  }

  bool _pic2Solved = false;
  bool get pic2Solved => _pic2Solved;
  set pic2Solved(bool _value) {
    _pic2Solved = _value;
  }

  bool _pic3Solved = false;
  bool get pic3Solved => _pic3Solved;
  set pic3Solved(bool _value) {
    _pic3Solved = _value;
  }

  bool _pic4Solved = false;
  bool get pic4Solved => _pic4Solved;
  set pic4Solved(bool _value) {
    _pic4Solved = _value;
  }

  bool _pic5Solved = false;
  bool get pic5Solved => _pic5Solved;
  set pic5Solved(bool _value) {
    _pic5Solved = _value;
  }

  bool _pic6Solved = false;
  bool get pic6Solved => _pic6Solved;
  set pic6Solved(bool _value) {
    _pic6Solved = _value;
  }

  bool _showHitzeGenerell = false;
  bool get showHitzeGenerell => _showHitzeGenerell;
  set showHitzeGenerell(bool _value) {
    _showHitzeGenerell = _value;
  }

  bool _showHitzeInfektionen = false;
  bool get showHitzeInfektionen => _showHitzeInfektionen;
  set showHitzeInfektionen(bool _value) {
    _showHitzeInfektionen = _value;
  }

  bool _showHizeLebensmittel = false;
  bool get showHizeLebensmittel => _showHizeLebensmittel;
  set showHizeLebensmittel(bool _value) {
    _showHizeLebensmittel = _value;
  }

  bool _showHitzeMental = false;
  bool get showHitzeMental => _showHitzeMental;
  set showHitzeMental(bool _value) {
    _showHitzeMental = _value;
  }

  bool _showNaturkatastrophenInfektionen = false;
  bool get showNaturkatastrophenInfektionen =>
      _showNaturkatastrophenInfektionen;
  set showNaturkatastrophenInfektionen(bool _value) {
    _showNaturkatastrophenInfektionen = _value;
  }

  bool _showNaturkatastrophenMental = false;
  bool get showNaturkatastrophenMental => _showNaturkatastrophenMental;
  set showNaturkatastrophenMental(bool _value) {
    _showNaturkatastrophenMental = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

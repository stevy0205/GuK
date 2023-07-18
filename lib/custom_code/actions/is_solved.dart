// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/foundation.dart';

bool isSolved(List<int> board) {
  List<int> solvedList = [1, 2, 3, 4, 5, 0];
  return listEquals(solvedList, board);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

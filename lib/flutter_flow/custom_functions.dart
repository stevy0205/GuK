import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

int indexUp(
  int index,
  int sizeOfCollection,
) {
  if (index + 1 < sizeOfCollection) {
    index = index + 1;
  }
  return index;
}

int? countScore(
  String answer,
  String correctAnswer,
  int score,
) {
  if (answer == correctAnswer) {
    score = score + 1;
  }
  return score;
}

bool? checkIndexOutOfBounds(
  int index,
  int sizeOfCollection,
) {
  return (index + 1 == sizeOfCollection);
}

List<int> initBoard() {
  List<int> numbersList = [1, 2, 3, 4, 5];
  return numbersList;
}

int getIndex(
  List<int> board,
  int value,
) {
  return board.indexOf(value);
}

bool? checkAnswer(
  String? answer,
  String? correctAnswer,
) {
  return answer == correctAnswer;
}

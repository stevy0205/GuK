import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FragenHitzeRecord extends FirestoreRecord {
  FragenHitzeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "antwort1" field.
  String? _antwort1;
  String get antwort1 => _antwort1 ?? '';
  bool hasAntwort1() => _antwort1 != null;

  // "antwort2" field.
  String? _antwort2;
  String get antwort2 => _antwort2 ?? '';
  bool hasAntwort2() => _antwort2 != null;

  // "antwort3" field.
  String? _antwort3;
  String get antwort3 => _antwort3 ?? '';
  bool hasAntwort3() => _antwort3 != null;

  // "antwort4" field.
  String? _antwort4;
  String get antwort4 => _antwort4 ?? '';
  bool hasAntwort4() => _antwort4 != null;

  // "frage" field.
  String? _frage;
  String get frage => _frage ?? '';
  bool hasFrage() => _frage != null;

  // "richtig" field.
  String? _richtig;
  String get richtig => _richtig ?? '';
  bool hasRichtig() => _richtig != null;

  void _initializeFields() {
    _antwort1 = snapshotData['antwort1'] as String?;
    _antwort2 = snapshotData['antwort2'] as String?;
    _antwort3 = snapshotData['antwort3'] as String?;
    _antwort4 = snapshotData['antwort4'] as String?;
    _frage = snapshotData['frage'] as String?;
    _richtig = snapshotData['richtig'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fragen_Hitze');

  static Stream<FragenHitzeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FragenHitzeRecord.fromSnapshot(s));

  static Future<FragenHitzeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FragenHitzeRecord.fromSnapshot(s));

  static FragenHitzeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FragenHitzeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FragenHitzeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FragenHitzeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FragenHitzeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FragenHitzeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFragenHitzeRecordData({
  String? antwort1,
  String? antwort2,
  String? antwort3,
  String? antwort4,
  String? frage,
  String? richtig,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'antwort1': antwort1,
      'antwort2': antwort2,
      'antwort3': antwort3,
      'antwort4': antwort4,
      'frage': frage,
      'richtig': richtig,
    }.withoutNulls,
  );

  return firestoreData;
}

class FragenHitzeRecordDocumentEquality implements Equality<FragenHitzeRecord> {
  const FragenHitzeRecordDocumentEquality();

  @override
  bool equals(FragenHitzeRecord? e1, FragenHitzeRecord? e2) {
    return e1?.antwort1 == e2?.antwort1 &&
        e1?.antwort2 == e2?.antwort2 &&
        e1?.antwort3 == e2?.antwort3 &&
        e1?.antwort4 == e2?.antwort4 &&
        e1?.frage == e2?.frage &&
        e1?.richtig == e2?.richtig;
  }

  @override
  int hash(FragenHitzeRecord? e) => const ListEquality().hash([
        e?.antwort1,
        e?.antwort2,
        e?.antwort3,
        e?.antwort4,
        e?.frage,
        e?.richtig
      ]);

  @override
  bool isValidKey(Object? o) => o is FragenHitzeRecord;
}

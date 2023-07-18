import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FragenNaturkatastrophenRecord extends FirestoreRecord {
  FragenNaturkatastrophenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Antwort1" field.
  String? _antwort1;
  String get antwort1 => _antwort1 ?? '';
  bool hasAntwort1() => _antwort1 != null;

  // "Antwort2" field.
  String? _antwort2;
  String get antwort2 => _antwort2 ?? '';
  bool hasAntwort2() => _antwort2 != null;

  // "Antwort3" field.
  String? _antwort3;
  String get antwort3 => _antwort3 ?? '';
  bool hasAntwort3() => _antwort3 != null;

  // "Antwort4" field.
  String? _antwort4;
  String get antwort4 => _antwort4 ?? '';
  bool hasAntwort4() => _antwort4 != null;

  // "Frage" field.
  String? _frage;
  String get frage => _frage ?? '';
  bool hasFrage() => _frage != null;

  // "richtig" field.
  String? _richtig;
  String get richtig => _richtig ?? '';
  bool hasRichtig() => _richtig != null;

  void _initializeFields() {
    _antwort1 = snapshotData['Antwort1'] as String?;
    _antwort2 = snapshotData['Antwort2'] as String?;
    _antwort3 = snapshotData['Antwort3'] as String?;
    _antwort4 = snapshotData['Antwort4'] as String?;
    _frage = snapshotData['Frage'] as String?;
    _richtig = snapshotData['richtig'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Fragen_Naturkatastrophen');

  static Stream<FragenNaturkatastrophenRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => FragenNaturkatastrophenRecord.fromSnapshot(s));

  static Future<FragenNaturkatastrophenRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => FragenNaturkatastrophenRecord.fromSnapshot(s));

  static FragenNaturkatastrophenRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      FragenNaturkatastrophenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FragenNaturkatastrophenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FragenNaturkatastrophenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FragenNaturkatastrophenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FragenNaturkatastrophenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFragenNaturkatastrophenRecordData({
  String? antwort1,
  String? antwort2,
  String? antwort3,
  String? antwort4,
  String? frage,
  String? richtig,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Antwort1': antwort1,
      'Antwort2': antwort2,
      'Antwort3': antwort3,
      'Antwort4': antwort4,
      'Frage': frage,
      'richtig': richtig,
    }.withoutNulls,
  );

  return firestoreData;
}

class FragenNaturkatastrophenRecordDocumentEquality
    implements Equality<FragenNaturkatastrophenRecord> {
  const FragenNaturkatastrophenRecordDocumentEquality();

  @override
  bool equals(
      FragenNaturkatastrophenRecord? e1, FragenNaturkatastrophenRecord? e2) {
    return e1?.antwort1 == e2?.antwort1 &&
        e1?.antwort2 == e2?.antwort2 &&
        e1?.antwort3 == e2?.antwort3 &&
        e1?.antwort4 == e2?.antwort4 &&
        e1?.frage == e2?.frage &&
        e1?.richtig == e2?.richtig;
  }

  @override
  int hash(FragenNaturkatastrophenRecord? e) => const ListEquality().hash([
        e?.antwort1,
        e?.antwort2,
        e?.antwort3,
        e?.antwort4,
        e?.frage,
        e?.richtig
      ]);

  @override
  bool isValidKey(Object? o) => o is FragenNaturkatastrophenRecord;
}

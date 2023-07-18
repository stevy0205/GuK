import 'package:cloud_firestore/cloud_firestore.dart';

import '../flutter_flow/flutter_flow_util.dart';
import 'schema/util/firestore_util.dart';

import 'schema/projects_record.dart';
import 'schema/fragen_record.dart';
import 'schema/fragen_hitze_record.dart';
import 'schema/fragen_k_h_g_w_record.dart';
import 'schema/fragen_geburtenrate_record.dart';
import 'schema/fragen_naturkatastrophen_record.dart';
import 'schema/fragen_tiere_record.dart';
import 'schema/fragen_klime_mentale_gesundheit_record.dart';
import 'schema/fragen_klimmwandel_auf_gesundheit_record.dart';
import 'schema/fragen_einfluss_klimawandel_auf_gesundheit_record.dart';
import 'schema/fragen_einfluss_klimmwandel_auf_gesundheit_record.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/util/firestore_util.dart';
export 'schema/util/schema_util.dart';

export 'schema/projects_record.dart';
export 'schema/fragen_record.dart';
export 'schema/fragen_hitze_record.dart';
export 'schema/fragen_k_h_g_w_record.dart';
export 'schema/fragen_geburtenrate_record.dart';
export 'schema/fragen_naturkatastrophen_record.dart';
export 'schema/fragen_tiere_record.dart';
export 'schema/fragen_klime_mentale_gesundheit_record.dart';
export 'schema/fragen_klimmwandel_auf_gesundheit_record.dart';
export 'schema/fragen_einfluss_klimawandel_auf_gesundheit_record.dart';
export 'schema/fragen_einfluss_klimmwandel_auf_gesundheit_record.dart';

/// Functions to query ProjectsRecords (as a Stream and as a Future).
Future<int> queryProjectsRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      ProjectsRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<ProjectsRecord>> queryProjectsRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ProjectsRecord.collection,
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ProjectsRecord>> queryProjectsRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ProjectsRecord.collection,
      ProjectsRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenRecords (as a Stream and as a Future).
Future<int> queryFragenRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenRecord>> queryFragenRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenRecord.collection,
      FragenRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenRecord>> queryFragenRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FragenRecord.collection,
      FragenRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenHitzeRecords (as a Stream and as a Future).
Future<int> queryFragenHitzeRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenHitzeRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenHitzeRecord>> queryFragenHitzeRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenHitzeRecord.collection,
      FragenHitzeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenHitzeRecord>> queryFragenHitzeRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FragenHitzeRecord.collection,
      FragenHitzeRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenKHGWRecords (as a Stream and as a Future).
Future<int> queryFragenKHGWRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenKHGWRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenKHGWRecord>> queryFragenKHGWRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenKHGWRecord.collection,
      FragenKHGWRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenKHGWRecord>> queryFragenKHGWRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FragenKHGWRecord.collection,
      FragenKHGWRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenGeburtenrateRecords (as a Stream and as a Future).
Future<int> queryFragenGeburtenrateRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenGeburtenrateRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenGeburtenrateRecord>> queryFragenGeburtenrateRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenGeburtenrateRecord.collection,
      FragenGeburtenrateRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenGeburtenrateRecord>> queryFragenGeburtenrateRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FragenGeburtenrateRecord.collection,
      FragenGeburtenrateRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenNaturkatastrophenRecords (as a Stream and as a Future).
Future<int> queryFragenNaturkatastrophenRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenNaturkatastrophenRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenNaturkatastrophenRecord>> queryFragenNaturkatastrophenRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenNaturkatastrophenRecord.collection,
      FragenNaturkatastrophenRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenNaturkatastrophenRecord>>
    queryFragenNaturkatastrophenRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FragenNaturkatastrophenRecord.collection,
          FragenNaturkatastrophenRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query FragenTiereRecords (as a Stream and as a Future).
Future<int> queryFragenTiereRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenTiereRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenTiereRecord>> queryFragenTiereRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FragenTiereRecord.collection,
      FragenTiereRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FragenTiereRecord>> queryFragenTiereRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FragenTiereRecord.collection,
      FragenTiereRecord.fromSnapshot,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

/// Functions to query FragenKlimeMentaleGesundheitRecords (as a Stream and as a Future).
Future<int> queryFragenKlimeMentaleGesundheitRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenKlimeMentaleGesundheitRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenKlimeMentaleGesundheitRecord>>
    queryFragenKlimeMentaleGesundheitRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          FragenKlimeMentaleGesundheitRecord.collection,
          FragenKlimeMentaleGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<FragenKlimeMentaleGesundheitRecord>>
    queryFragenKlimeMentaleGesundheitRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FragenKlimeMentaleGesundheitRecord.collection,
          FragenKlimeMentaleGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query FragenKlimmwandelAufGesundheitRecords (as a Stream and as a Future).
Future<int> queryFragenKlimmwandelAufGesundheitRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenKlimmwandelAufGesundheitRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenKlimmwandelAufGesundheitRecord>>
    queryFragenKlimmwandelAufGesundheitRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          FragenKlimmwandelAufGesundheitRecord.collection,
          FragenKlimmwandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<FragenKlimmwandelAufGesundheitRecord>>
    queryFragenKlimmwandelAufGesundheitRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FragenKlimmwandelAufGesundheitRecord.collection,
          FragenKlimmwandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query FragenEinflussKlimawandelAufGesundheitRecords (as a Stream and as a Future).
Future<int> queryFragenEinflussKlimawandelAufGesundheitRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenEinflussKlimawandelAufGesundheitRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenEinflussKlimawandelAufGesundheitRecord>>
    queryFragenEinflussKlimawandelAufGesundheitRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          FragenEinflussKlimawandelAufGesundheitRecord.collection,
          FragenEinflussKlimawandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<FragenEinflussKlimawandelAufGesundheitRecord>>
    queryFragenEinflussKlimawandelAufGesundheitRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FragenEinflussKlimawandelAufGesundheitRecord.collection,
          FragenEinflussKlimawandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

/// Functions to query FragenEinflussKlimmwandelAufGesundheitRecords (as a Stream and as a Future).
Future<int> queryFragenEinflussKlimmwandelAufGesundheitRecordCount({
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) =>
    queryCollectionCount(
      FragenEinflussKlimmwandelAufGesundheitRecord.collection,
      queryBuilder: queryBuilder,
      limit: limit,
    );

Stream<List<FragenEinflussKlimmwandelAufGesundheitRecord>>
    queryFragenEinflussKlimmwandelAufGesundheitRecord({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollection(
          FragenEinflussKlimmwandelAufGesundheitRecord.collection,
          FragenEinflussKlimmwandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<List<FragenEinflussKlimmwandelAufGesundheitRecord>>
    queryFragenEinflussKlimmwandelAufGesundheitRecordOnce({
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
        queryCollectionOnce(
          FragenEinflussKlimmwandelAufGesundheitRecord.collection,
          FragenEinflussKlimmwandelAufGesundheitRecord.fromSnapshot,
          queryBuilder: queryBuilder,
          limit: limit,
          singleRecord: singleRecord,
        );

Future<int> queryCollectionCount(
  Query collection, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0) {
    query = query.limit(limit);
  }

  return query.count().get().catchError((err) {
    print('Error querying $collection: $err');
  }).then((value) => value.count);
}

Stream<List<T>> queryCollection<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList());
}

extension QueryExtension on Query {
  Query whereIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereIn: null)
      : where(field, whereIn: list);

  Query whereNotIn(String field, List? list) => (list?.isEmpty ?? true)
      ? where(field, whereNotIn: null)
      : where(field, whereNotIn: list);

  Query whereArrayContainsAny(String field, List? list) =>
      (list?.isEmpty ?? true)
          ? where(field, arrayContainsAny: null)
          : where(field, arrayContainsAny: list);
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>>? dataStream;
  final QueryDocumentSnapshot? nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  RecordBuilder<T> recordBuilder, {
  Query Function(Query)? queryBuilder,
  DocumentSnapshot? nextPageMarker,
  required int pageSize,
  required bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot>? docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => recordBuilder(d),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .map((d) => d!)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

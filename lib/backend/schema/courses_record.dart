import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "coursePoster" field.
  String? _coursePoster;
  String get coursePoster => _coursePoster ?? '';
  bool hasCoursePoster() => _coursePoster != null;

  // "courseDescription" field.
  String? _courseDescription;
  String get courseDescription => _courseDescription ?? '';
  bool hasCourseDescription() => _courseDescription != null;

  // "Ispremium" field.
  bool? _ispremium;
  bool get ispremium => _ispremium ?? false;
  bool hasIspremium() => _ispremium != null;

  // "coursename" field.
  String? _coursename;
  String get coursename => _coursename ?? '';
  bool hasCoursename() => _coursename != null;

  void _initializeFields() {
    _coursePoster = snapshotData['coursePoster'] as String?;
    _courseDescription = snapshotData['courseDescription'] as String?;
    _ispremium = snapshotData['Ispremium'] as bool?;
    _coursename = snapshotData['coursename'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? coursePoster,
  String? courseDescription,
  bool? ispremium,
  String? coursename,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coursePoster': coursePoster,
      'courseDescription': courseDescription,
      'Ispremium': ispremium,
      'coursename': coursename,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    return e1?.coursePoster == e2?.coursePoster &&
        e1?.courseDescription == e2?.courseDescription &&
        e1?.ispremium == e2?.ispremium &&
        e1?.coursename == e2?.coursename;
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality().hash(
      [e?.coursePoster, e?.courseDescription, e?.ispremium, e?.coursename]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiaryInputsRecord extends FirestoreRecord {
  DiaryInputsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "MoodToday" field.
  String? _moodToday;
  String get moodToday => _moodToday ?? '';
  bool hasMoodToday() => _moodToday != null;

  // "feelingToday" field.
  String? _feelingToday;
  String get feelingToday => _feelingToday ?? '';
  bool hasFeelingToday() => _feelingToday != null;

  // "myThoughts" field.
  String? _myThoughts;
  String get myThoughts => _myThoughts ?? '';
  bool hasMyThoughts() => _myThoughts != null;

  // "whatIwantRn" field.
  String? _whatIwantRn;
  String get whatIwantRn => _whatIwantRn ?? '';
  bool hasWhatIwantRn() => _whatIwantRn != null;

  // "plansToday" field.
  String? _plansToday;
  String get plansToday => _plansToday ?? '';
  bool hasPlansToday() => _plansToday != null;

  // "personalCare" field.
  String? _personalCare;
  String get personalCare => _personalCare ?? '';
  bool hasPersonalCare() => _personalCare != null;

  // "plansfoFuture" field.
  String? _plansfoFuture;
  String get plansfoFuture => _plansfoFuture ?? '';
  bool hasPlansfoFuture() => _plansfoFuture != null;

  // "feelingGreatful" field.
  String? _feelingGreatful;
  String get feelingGreatful => _feelingGreatful ?? '';
  bool hasFeelingGreatful() => _feelingGreatful != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "emoji" field.
  String? _emoji;
  String get emoji => _emoji ?? '';
  bool hasEmoji() => _emoji != null;

  // "entrymade" field.
  bool? _entrymade;
  bool get entrymade => _entrymade ?? false;
  bool hasEntrymade() => _entrymade != null;

  void _initializeFields() {
    _date = snapshotData['Date'] as DateTime?;
    _moodToday = snapshotData['MoodToday'] as String?;
    _feelingToday = snapshotData['feelingToday'] as String?;
    _myThoughts = snapshotData['myThoughts'] as String?;
    _whatIwantRn = snapshotData['whatIwantRn'] as String?;
    _plansToday = snapshotData['plansToday'] as String?;
    _personalCare = snapshotData['personalCare'] as String?;
    _plansfoFuture = snapshotData['plansfoFuture'] as String?;
    _feelingGreatful = snapshotData['feelingGreatful'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _emoji = snapshotData['emoji'] as String?;
    _entrymade = snapshotData['entrymade'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DiaryInputs');

  static Stream<DiaryInputsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiaryInputsRecord.fromSnapshot(s));

  static Future<DiaryInputsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiaryInputsRecord.fromSnapshot(s));

  static DiaryInputsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiaryInputsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiaryInputsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiaryInputsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiaryInputsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiaryInputsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiaryInputsRecordData({
  DateTime? date,
  String? moodToday,
  String? feelingToday,
  String? myThoughts,
  String? whatIwantRn,
  String? plansToday,
  String? personalCare,
  String? plansfoFuture,
  String? feelingGreatful,
  DocumentReference? owner,
  String? emoji,
  bool? entrymade,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Date': date,
      'MoodToday': moodToday,
      'feelingToday': feelingToday,
      'myThoughts': myThoughts,
      'whatIwantRn': whatIwantRn,
      'plansToday': plansToday,
      'personalCare': personalCare,
      'plansfoFuture': plansfoFuture,
      'feelingGreatful': feelingGreatful,
      'owner': owner,
      'emoji': emoji,
      'entrymade': entrymade,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiaryInputsRecordDocumentEquality implements Equality<DiaryInputsRecord> {
  const DiaryInputsRecordDocumentEquality();

  @override
  bool equals(DiaryInputsRecord? e1, DiaryInputsRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.moodToday == e2?.moodToday &&
        e1?.feelingToday == e2?.feelingToday &&
        e1?.myThoughts == e2?.myThoughts &&
        e1?.whatIwantRn == e2?.whatIwantRn &&
        e1?.plansToday == e2?.plansToday &&
        e1?.personalCare == e2?.personalCare &&
        e1?.plansfoFuture == e2?.plansfoFuture &&
        e1?.feelingGreatful == e2?.feelingGreatful &&
        e1?.owner == e2?.owner &&
        e1?.emoji == e2?.emoji &&
        e1?.entrymade == e2?.entrymade;
  }

  @override
  int hash(DiaryInputsRecord? e) => const ListEquality().hash([
        e?.date,
        e?.moodToday,
        e?.feelingToday,
        e?.myThoughts,
        e?.whatIwantRn,
        e?.plansToday,
        e?.personalCare,
        e?.plansfoFuture,
        e?.feelingGreatful,
        e?.owner,
        e?.emoji,
        e?.entrymade
      ]);

  @override
  bool isValidKey(Object? o) => o is DiaryInputsRecord;
}

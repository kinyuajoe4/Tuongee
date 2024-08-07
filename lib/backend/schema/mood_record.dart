import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoodRecord extends FirestoreRecord {
  MoodRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "moodname" field.
  String? _moodname;
  String get moodname => _moodname ?? '';
  bool hasMoodname() => _moodname != null;

  // "emoji" field.
  String? _emoji;
  String get emoji => _emoji ?? '';
  bool hasEmoji() => _emoji != null;

  // "posOrNeg" field.
  bool? _posOrNeg;
  bool get posOrNeg => _posOrNeg ?? false;
  bool hasPosOrNeg() => _posOrNeg != null;

  void _initializeFields() {
    _moodname = snapshotData['moodname'] as String?;
    _emoji = snapshotData['emoji'] as String?;
    _posOrNeg = snapshotData['posOrNeg'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mood');

  static Stream<MoodRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoodRecord.fromSnapshot(s));

  static Future<MoodRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoodRecord.fromSnapshot(s));

  static MoodRecord fromSnapshot(DocumentSnapshot snapshot) => MoodRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoodRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoodRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoodRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoodRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMoodRecordData({
  String? moodname,
  String? emoji,
  bool? posOrNeg,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'moodname': moodname,
      'emoji': emoji,
      'posOrNeg': posOrNeg,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoodRecordDocumentEquality implements Equality<MoodRecord> {
  const MoodRecordDocumentEquality();

  @override
  bool equals(MoodRecord? e1, MoodRecord? e2) {
    return e1?.moodname == e2?.moodname &&
        e1?.emoji == e2?.emoji &&
        e1?.posOrNeg == e2?.posOrNeg;
  }

  @override
  int hash(MoodRecord? e) =>
      const ListEquality().hash([e?.moodname, e?.emoji, e?.posOrNeg]);

  @override
  bool isValidKey(Object? o) => o is MoodRecord;
}

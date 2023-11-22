import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CampaignsRecord extends FirestoreRecord {
  CampaignsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "poster" field.
  String? _poster;
  String get poster => _poster ?? '';
  bool hasPoster() => _poster != null;

  // "likes" field.
  bool? _likes;
  bool get likes => _likes ?? false;
  bool hasLikes() => _likes != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _poster = snapshotData['poster'] as String?;
    _likes = snapshotData['likes'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('campaigns');

  static Stream<CampaignsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CampaignsRecord.fromSnapshot(s));

  static Future<CampaignsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CampaignsRecord.fromSnapshot(s));

  static CampaignsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CampaignsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CampaignsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CampaignsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CampaignsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CampaignsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCampaignsRecordData({
  String? name,
  String? poster,
  bool? likes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'poster': poster,
      'likes': likes,
    }.withoutNulls,
  );

  return firestoreData;
}

class CampaignsRecordDocumentEquality implements Equality<CampaignsRecord> {
  const CampaignsRecordDocumentEquality();

  @override
  bool equals(CampaignsRecord? e1, CampaignsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.poster == e2?.poster &&
        e1?.likes == e2?.likes;
  }

  @override
  int hash(CampaignsRecord? e) =>
      const ListEquality().hash([e?.name, e?.poster, e?.likes]);

  @override
  bool isValidKey(Object? o) => o is CampaignsRecord;
}

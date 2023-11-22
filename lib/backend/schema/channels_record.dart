import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChannelsRecord extends FirestoreRecord {
  ChannelsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "chanelname" field.
  String? _chanelname;
  String get chanelname => _chanelname ?? '';
  bool hasChanelname() => _chanelname != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "following" field.
  bool? _following;
  bool get following => _following ?? false;
  bool hasFollowing() => _following != null;

  // "about" field.
  String? _about;
  String get about => _about ?? '';
  bool hasAbout() => _about != null;

  void _initializeFields() {
    _chanelname = snapshotData['chanelname'] as String?;
    _image = snapshotData['image'] as String?;
    _following = snapshotData['following'] as bool?;
    _about = snapshotData['about'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('channels');

  static Stream<ChannelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChannelsRecord.fromSnapshot(s));

  static Future<ChannelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChannelsRecord.fromSnapshot(s));

  static ChannelsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChannelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChannelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChannelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChannelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChannelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChannelsRecordData({
  String? chanelname,
  String? image,
  bool? following,
  String? about,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chanelname': chanelname,
      'image': image,
      'following': following,
      'about': about,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChannelsRecordDocumentEquality implements Equality<ChannelsRecord> {
  const ChannelsRecordDocumentEquality();

  @override
  bool equals(ChannelsRecord? e1, ChannelsRecord? e2) {
    return e1?.chanelname == e2?.chanelname &&
        e1?.image == e2?.image &&
        e1?.following == e2?.following &&
        e1?.about == e2?.about;
  }

  @override
  int hash(ChannelsRecord? e) => const ListEquality()
      .hash([e?.chanelname, e?.image, e?.following, e?.about]);

  @override
  bool isValidKey(Object? o) => o is ChannelsRecord;
}

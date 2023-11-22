import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChannelmessageRecord extends FirestoreRecord {
  ChannelmessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mesage" field.
  String? _mesage;
  String get mesage => _mesage ?? '';
  bool hasMesage() => _mesage != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "messagetime" field.
  DateTime? _messagetime;
  DateTime? get messagetime => _messagetime;
  bool hasMessagetime() => _messagetime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _mesage = snapshotData['mesage'] as String?;
    _image = snapshotData['image'] as String?;
    _messagetime = snapshotData['messagetime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('channelmessage')
          : FirebaseFirestore.instance.collectionGroup('channelmessage');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('channelmessage').doc();

  static Stream<ChannelmessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChannelmessageRecord.fromSnapshot(s));

  static Future<ChannelmessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChannelmessageRecord.fromSnapshot(s));

  static ChannelmessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChannelmessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChannelmessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChannelmessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChannelmessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChannelmessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChannelmessageRecordData({
  String? mesage,
  String? image,
  DateTime? messagetime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mesage': mesage,
      'image': image,
      'messagetime': messagetime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChannelmessageRecordDocumentEquality
    implements Equality<ChannelmessageRecord> {
  const ChannelmessageRecordDocumentEquality();

  @override
  bool equals(ChannelmessageRecord? e1, ChannelmessageRecord? e2) {
    return e1?.mesage == e2?.mesage &&
        e1?.image == e2?.image &&
        e1?.messagetime == e2?.messagetime;
  }

  @override
  int hash(ChannelmessageRecord? e) =>
      const ListEquality().hash([e?.mesage, e?.image, e?.messagetime]);

  @override
  bool isValidKey(Object? o) => o is ChannelmessageRecord;
}

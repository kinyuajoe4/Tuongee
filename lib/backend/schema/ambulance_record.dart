import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmbulanceRecord extends FirestoreRecord {
  AmbulanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "hospitalname" field.
  String? _hospitalname;
  String get hospitalname => _hospitalname ?? '';
  bool hasHospitalname() => _hospitalname != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "bookingfor" field.
  String? _bookingfor;
  String get bookingfor => _bookingfor ?? '';
  bool hasBookingfor() => _bookingfor != null;

  // "confirmed" field.
  bool? _confirmed;
  bool get confirmed => _confirmed ?? false;
  bool hasConfirmed() => _confirmed != null;

  void _initializeFields() {
    _hospitalname = snapshotData['hospitalname'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _bookingfor = snapshotData['bookingfor'] as String?;
    _confirmed = snapshotData['confirmed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ambulance');

  static Stream<AmbulanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmbulanceRecord.fromSnapshot(s));

  static Future<AmbulanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmbulanceRecord.fromSnapshot(s));

  static AmbulanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AmbulanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmbulanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmbulanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmbulanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmbulanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmbulanceRecordData({
  String? hospitalname,
  DateTime? time,
  String? bookingfor,
  bool? confirmed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'hospitalname': hospitalname,
      'time': time,
      'bookingfor': bookingfor,
      'confirmed': confirmed,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmbulanceRecordDocumentEquality implements Equality<AmbulanceRecord> {
  const AmbulanceRecordDocumentEquality();

  @override
  bool equals(AmbulanceRecord? e1, AmbulanceRecord? e2) {
    return e1?.hospitalname == e2?.hospitalname &&
        e1?.time == e2?.time &&
        e1?.bookingfor == e2?.bookingfor &&
        e1?.confirmed == e2?.confirmed;
  }

  @override
  int hash(AmbulanceRecord? e) => const ListEquality()
      .hash([e?.hospitalname, e?.time, e?.bookingfor, e?.confirmed]);

  @override
  bool isValidKey(Object? o) => o is AmbulanceRecord;
}

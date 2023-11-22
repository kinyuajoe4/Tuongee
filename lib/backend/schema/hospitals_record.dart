import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HospitalsRecord extends FirestoreRecord {
  HospitalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "locationname" field.
  String? _locationname;
  String get locationname => _locationname ?? '';
  bool hasLocationname() => _locationname != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _logo = snapshotData['logo'] as String?;
    _locationname = snapshotData['locationname'] as String?;
    _phone = snapshotData['phone'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospitals');

  static Stream<HospitalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HospitalsRecord.fromSnapshot(s));

  static Future<HospitalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HospitalsRecord.fromSnapshot(s));

  static HospitalsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HospitalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HospitalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HospitalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HospitalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HospitalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHospitalsRecordData({
  String? name,
  LatLng? location,
  String? logo,
  String? locationname,
  String? phone,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'location': location,
      'logo': logo,
      'locationname': locationname,
      'phone': phone,
    }.withoutNulls,
  );

  return firestoreData;
}

class HospitalsRecordDocumentEquality implements Equality<HospitalsRecord> {
  const HospitalsRecordDocumentEquality();

  @override
  bool equals(HospitalsRecord? e1, HospitalsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.location == e2?.location &&
        e1?.logo == e2?.logo &&
        e1?.locationname == e2?.locationname &&
        e1?.phone == e2?.phone;
  }

  @override
  int hash(HospitalsRecord? e) => const ListEquality()
      .hash([e?.name, e?.location, e?.logo, e?.locationname, e?.phone]);

  @override
  bool isValidKey(Object? o) => o is HospitalsRecord;
}

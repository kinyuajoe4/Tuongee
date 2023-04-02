import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'asdfasdf_record.g.dart';

abstract class AsdfasdfRecord
    implements Built<AsdfasdfRecord, AsdfasdfRecordBuilder> {
  static Serializer<AsdfasdfRecord> get serializer =>
      _$asdfasdfRecordSerializer;

  double? get asdfasdf;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AsdfasdfRecordBuilder builder) =>
      builder..asdfasdf = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asdfasdf');

  static Stream<AsdfasdfRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AsdfasdfRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AsdfasdfRecord._();
  factory AsdfasdfRecord([void Function(AsdfasdfRecordBuilder) updates]) =
      _$AsdfasdfRecord;

  static AsdfasdfRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAsdfasdfRecordData({
  double? asdfasdf,
}) {
  final firestoreData = serializers.toFirestore(
    AsdfasdfRecord.serializer,
    AsdfasdfRecord(
      (a) => a..asdfasdf = asdfasdf,
    ),
  );

  return firestoreData;
}

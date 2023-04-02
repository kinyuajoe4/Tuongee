// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asdfasdf_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AsdfasdfRecord> _$asdfasdfRecordSerializer =
    new _$AsdfasdfRecordSerializer();

class _$AsdfasdfRecordSerializer
    implements StructuredSerializer<AsdfasdfRecord> {
  @override
  final Iterable<Type> types = const [AsdfasdfRecord, _$AsdfasdfRecord];
  @override
  final String wireName = 'AsdfasdfRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AsdfasdfRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.asdfasdf;
    if (value != null) {
      result
        ..add('asdfasdf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AsdfasdfRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AsdfasdfRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'asdfasdf':
          result.asdfasdf = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AsdfasdfRecord extends AsdfasdfRecord {
  @override
  final double? asdfasdf;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AsdfasdfRecord([void Function(AsdfasdfRecordBuilder)? updates]) =>
      (new AsdfasdfRecordBuilder()..update(updates))._build();

  _$AsdfasdfRecord._({this.asdfasdf, this.ffRef}) : super._();

  @override
  AsdfasdfRecord rebuild(void Function(AsdfasdfRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AsdfasdfRecordBuilder toBuilder() =>
      new AsdfasdfRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AsdfasdfRecord &&
        asdfasdf == other.asdfasdf &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, asdfasdf.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AsdfasdfRecord')
          ..add('asdfasdf', asdfasdf)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AsdfasdfRecordBuilder
    implements Builder<AsdfasdfRecord, AsdfasdfRecordBuilder> {
  _$AsdfasdfRecord? _$v;

  double? _asdfasdf;
  double? get asdfasdf => _$this._asdfasdf;
  set asdfasdf(double? asdfasdf) => _$this._asdfasdf = asdfasdf;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AsdfasdfRecordBuilder() {
    AsdfasdfRecord._initializeBuilder(this);
  }

  AsdfasdfRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _asdfasdf = $v.asdfasdf;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AsdfasdfRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AsdfasdfRecord;
  }

  @override
  void update(void Function(AsdfasdfRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AsdfasdfRecord build() => _build();

  _$AsdfasdfRecord _build() {
    final _$result =
        _$v ?? new _$AsdfasdfRecord._(asdfasdf: asdfasdf, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

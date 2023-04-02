// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppointmentsRecord> _$appointmentsRecordSerializer =
    new _$AppointmentsRecordSerializer();

class _$AppointmentsRecordSerializer
    implements StructuredSerializer<AppointmentsRecord> {
  @override
  final Iterable<Type> types = const [AppointmentsRecord, _$AppointmentsRecord];
  @override
  final String wireName = 'AppointmentsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.appointmentName;
    if (value != null) {
      result
        ..add('appointmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentDescription;
    if (value != null) {
      result
        ..add('appointmentDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentPerson;
    if (value != null) {
      result
        ..add('appointmentPerson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.appointmentTime;
    if (value != null) {
      result
        ..add('appointmentTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.appointmentType;
    if (value != null) {
      result
        ..add('appointmentType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.appointmentEmail;
    if (value != null) {
      result
        ..add('appointmentEmail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AppointmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'appointmentName':
          result.appointmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointmentDescription':
          result.appointmentDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointmentPerson':
          result.appointmentPerson = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'appointmentTime':
          result.appointmentTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'appointmentType':
          result.appointmentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'appointmentEmail':
          result.appointmentEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AppointmentsRecord extends AppointmentsRecord {
  @override
  final String? appointmentName;
  @override
  final String? appointmentDescription;
  @override
  final DocumentReference<Object?>? appointmentPerson;
  @override
  final DateTime? appointmentTime;
  @override
  final String? appointmentType;
  @override
  final String? appointmentEmail;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AppointmentsRecord(
          [void Function(AppointmentsRecordBuilder)? updates]) =>
      (new AppointmentsRecordBuilder()..update(updates))._build();

  _$AppointmentsRecord._(
      {this.appointmentName,
      this.appointmentDescription,
      this.appointmentPerson,
      this.appointmentTime,
      this.appointmentType,
      this.appointmentEmail,
      this.ffRef})
      : super._();

  @override
  AppointmentsRecord rebuild(
          void Function(AppointmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentsRecordBuilder toBuilder() =>
      new AppointmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentsRecord &&
        appointmentName == other.appointmentName &&
        appointmentDescription == other.appointmentDescription &&
        appointmentPerson == other.appointmentPerson &&
        appointmentTime == other.appointmentTime &&
        appointmentType == other.appointmentType &&
        appointmentEmail == other.appointmentEmail &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appointmentName.hashCode);
    _$hash = $jc(_$hash, appointmentDescription.hashCode);
    _$hash = $jc(_$hash, appointmentPerson.hashCode);
    _$hash = $jc(_$hash, appointmentTime.hashCode);
    _$hash = $jc(_$hash, appointmentType.hashCode);
    _$hash = $jc(_$hash, appointmentEmail.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentsRecord')
          ..add('appointmentName', appointmentName)
          ..add('appointmentDescription', appointmentDescription)
          ..add('appointmentPerson', appointmentPerson)
          ..add('appointmentTime', appointmentTime)
          ..add('appointmentType', appointmentType)
          ..add('appointmentEmail', appointmentEmail)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AppointmentsRecordBuilder
    implements Builder<AppointmentsRecord, AppointmentsRecordBuilder> {
  _$AppointmentsRecord? _$v;

  String? _appointmentName;
  String? get appointmentName => _$this._appointmentName;
  set appointmentName(String? appointmentName) =>
      _$this._appointmentName = appointmentName;

  String? _appointmentDescription;
  String? get appointmentDescription => _$this._appointmentDescription;
  set appointmentDescription(String? appointmentDescription) =>
      _$this._appointmentDescription = appointmentDescription;

  DocumentReference<Object?>? _appointmentPerson;
  DocumentReference<Object?>? get appointmentPerson =>
      _$this._appointmentPerson;
  set appointmentPerson(DocumentReference<Object?>? appointmentPerson) =>
      _$this._appointmentPerson = appointmentPerson;

  DateTime? _appointmentTime;
  DateTime? get appointmentTime => _$this._appointmentTime;
  set appointmentTime(DateTime? appointmentTime) =>
      _$this._appointmentTime = appointmentTime;

  String? _appointmentType;
  String? get appointmentType => _$this._appointmentType;
  set appointmentType(String? appointmentType) =>
      _$this._appointmentType = appointmentType;

  String? _appointmentEmail;
  String? get appointmentEmail => _$this._appointmentEmail;
  set appointmentEmail(String? appointmentEmail) =>
      _$this._appointmentEmail = appointmentEmail;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AppointmentsRecordBuilder() {
    AppointmentsRecord._initializeBuilder(this);
  }

  AppointmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appointmentName = $v.appointmentName;
      _appointmentDescription = $v.appointmentDescription;
      _appointmentPerson = $v.appointmentPerson;
      _appointmentTime = $v.appointmentTime;
      _appointmentType = $v.appointmentType;
      _appointmentEmail = $v.appointmentEmail;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentsRecord;
  }

  @override
  void update(void Function(AppointmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentsRecord build() => _build();

  _$AppointmentsRecord _build() {
    final _$result = _$v ??
        new _$AppointmentsRecord._(
            appointmentName: appointmentName,
            appointmentDescription: appointmentDescription,
            appointmentPerson: appointmentPerson,
            appointmentTime: appointmentTime,
            appointmentType: appointmentType,
            appointmentEmail: appointmentEmail,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

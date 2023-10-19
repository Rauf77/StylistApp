// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'style_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StyleListRecord> _$styleListRecordSerializer =
    new _$StyleListRecordSerializer();

class _$StyleListRecordSerializer
    implements StructuredSerializer<StyleListRecord> {
  @override
  final Iterable<Type> types = const [StyleListRecord, _$StyleListRecord];
  @override
  final String wireName = 'StyleListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, StyleListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.majorWorks;
    if (value != null) {
      result
        ..add('major_works')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timeSlot;
    if (value != null) {
      result
        ..add('timeSlot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lat;
    if (value != null) {
      result
        ..add('lat')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.lng;
    if (value != null) {
      result
        ..add('lng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.onField;
    if (value != null) {
      result
        ..add('onField')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.verify;
    if (value != null) {
      result
        ..add('verify')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('startTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('endTime')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  StyleListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StyleListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'major_works':
          result.majorWorks = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeSlot':
          result.timeSlot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'onField':
          result.onField = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'verify':
          result.verify = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'startTime':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'endTime':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$StyleListRecord extends StyleListRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String majorWorks;
  @override
  final String bio;
  @override
  final String timeSlot;
  @override
  final String type;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final bool onField;
  @override
  final bool verify;
  @override
  final int startTime;
  @override
  final int endTime;
  @override
  final int duration;
  @override
  final DocumentReference<Object> reference;

  factory _$StyleListRecord([void Function(StyleListRecordBuilder) updates]) =>
      (new StyleListRecordBuilder()..update(updates)).build();

  _$StyleListRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.majorWorks,
      this.bio,
      this.timeSlot,
      this.type,
      this.lat,
      this.lng,
      this.onField,
      this.verify,
      this.startTime,
      this.endTime,
      this.duration,
      this.reference})
      : super._();

  @override
  StyleListRecord rebuild(void Function(StyleListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StyleListRecordBuilder toBuilder() =>
      new StyleListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StyleListRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        majorWorks == other.majorWorks &&
        bio == other.bio &&
        timeSlot == other.timeSlot &&
        type == other.type &&
        lat == other.lat &&
        lng == other.lng &&
        onField == other.onField &&
        verify == other.verify &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        duration == other.duration &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            email
                                                                                .hashCode),
                                                                        displayName
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    majorWorks.hashCode),
                                                bio.hashCode),
                                            timeSlot.hashCode),
                                        type.hashCode),
                                    lat.hashCode),
                                lng.hashCode),
                            onField.hashCode),
                        verify.hashCode),
                    startTime.hashCode),
                endTime.hashCode),
            duration.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StyleListRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('majorWorks', majorWorks)
          ..add('bio', bio)
          ..add('timeSlot', timeSlot)
          ..add('type', type)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('onField', onField)
          ..add('verify', verify)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('duration', duration)
          ..add('reference', reference))
        .toString();
  }
}

class StyleListRecordBuilder
    implements Builder<StyleListRecord, StyleListRecordBuilder> {
  _$StyleListRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _majorWorks;
  String get majorWorks => _$this._majorWorks;
  set majorWorks(String majorWorks) => _$this._majorWorks = majorWorks;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  String _timeSlot;
  String get timeSlot => _$this._timeSlot;
  set timeSlot(String timeSlot) => _$this._timeSlot = timeSlot;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lng;
  double get lng => _$this._lng;
  set lng(double lng) => _$this._lng = lng;

  bool _onField;
  bool get onField => _$this._onField;
  set onField(bool onField) => _$this._onField = onField;

  bool _verify;
  bool get verify => _$this._verify;
  set verify(bool verify) => _$this._verify = verify;

  int _startTime;
  int get startTime => _$this._startTime;
  set startTime(int startTime) => _$this._startTime = startTime;

  int _endTime;
  int get endTime => _$this._endTime;
  set endTime(int endTime) => _$this._endTime = endTime;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  StyleListRecordBuilder() {
    StyleListRecord._initializeBuilder(this);
  }

  StyleListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _majorWorks = $v.majorWorks;
      _bio = $v.bio;
      _timeSlot = $v.timeSlot;
      _type = $v.type;
      _lat = $v.lat;
      _lng = $v.lng;
      _onField = $v.onField;
      _verify = $v.verify;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _duration = $v.duration;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StyleListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StyleListRecord;
  }

  @override
  void update(void Function(StyleListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StyleListRecord build() {
    final _$result = _$v ??
        new _$StyleListRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            majorWorks: majorWorks,
            bio: bio,
            timeSlot: timeSlot,
            type: type,
            lat: lat,
            lng: lng,
            onField: onField,
            verify: verify,
            startTime: startTime,
            endTime: endTime,
            duration: duration,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookingRecord> _$bookingRecordSerializer =
    new _$BookingRecordSerializer();

class _$BookingRecordSerializer implements StructuredSerializer<BookingRecord> {
  @override
  final Iterable<Type> types = const [BookingRecord, _$BookingRecord];
  @override
  final String wireName = 'BookingRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BookingRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uname;
    if (value != null) {
      result
        ..add('uname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.slot;
    if (value != null) {
      result
        ..add('slot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.stylistName;
    if (value != null) {
      result
        ..add('stylist_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sId;
    if (value != null) {
      result
        ..add('sId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
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
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  BookingRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookingRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uname':
          result.uname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'slot':
          result.slot = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'stylist_name':
          result.stylistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sId':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$BookingRecord extends BookingRecord {
  @override
  final String uid;
  @override
  final String uname;
  @override
  final DateTime time;
  @override
  final DateTime slot;
  @override
  final String stylistName;
  @override
  final String sId;
  @override
  final int status;
  @override
  final int duration;
  @override
  final String photoUrl;
  @override
  final String type;
  @override
  final String location;
  @override
  final DocumentReference<Object> reference;

  factory _$BookingRecord([void Function(BookingRecordBuilder) updates]) =>
      (new BookingRecordBuilder()..update(updates)).build();

  _$BookingRecord._(
      {this.uid,
      this.uname,
      this.time,
      this.slot,
      this.stylistName,
      this.sId,
      this.status,
      this.duration,
      this.photoUrl,
      this.type,
      this.location,
      this.reference})
      : super._();

  @override
  BookingRecord rebuild(void Function(BookingRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingRecordBuilder toBuilder() => new BookingRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingRecord &&
        uid == other.uid &&
        uname == other.uname &&
        time == other.time &&
        slot == other.slot &&
        stylistName == other.stylistName &&
        sId == other.sId &&
        status == other.status &&
        duration == other.duration &&
        photoUrl == other.photoUrl &&
        type == other.type &&
        location == other.location &&
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
                                            $jc($jc(0, uid.hashCode),
                                                uname.hashCode),
                                            time.hashCode),
                                        slot.hashCode),
                                    stylistName.hashCode),
                                sId.hashCode),
                            status.hashCode),
                        duration.hashCode),
                    photoUrl.hashCode),
                type.hashCode),
            location.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookingRecord')
          ..add('uid', uid)
          ..add('uname', uname)
          ..add('time', time)
          ..add('slot', slot)
          ..add('stylistName', stylistName)
          ..add('sId', sId)
          ..add('status', status)
          ..add('duration', duration)
          ..add('photoUrl', photoUrl)
          ..add('type', type)
          ..add('location', location)
          ..add('reference', reference))
        .toString();
  }
}

class BookingRecordBuilder
    implements Builder<BookingRecord, BookingRecordBuilder> {
  _$BookingRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _uname;
  String get uname => _$this._uname;
  set uname(String uname) => _$this._uname = uname;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  DateTime _slot;
  DateTime get slot => _$this._slot;
  set slot(DateTime slot) => _$this._slot = slot;

  String _stylistName;
  String get stylistName => _$this._stylistName;
  set stylistName(String stylistName) => _$this._stylistName = stylistName;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  int _duration;
  int get duration => _$this._duration;
  set duration(int duration) => _$this._duration = duration;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BookingRecordBuilder() {
    BookingRecord._initializeBuilder(this);
  }

  BookingRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _uname = $v.uname;
      _time = $v.time;
      _slot = $v.slot;
      _stylistName = $v.stylistName;
      _sId = $v.sId;
      _status = $v.status;
      _duration = $v.duration;
      _photoUrl = $v.photoUrl;
      _type = $v.type;
      _location = $v.location;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookingRecord;
  }

  @override
  void update(void Function(BookingRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BookingRecord build() {
    final _$result = _$v ??
        new _$BookingRecord._(
            uid: uid,
            uname: uname,
            time: time,
            slot: slot,
            stylistName: stylistName,
            sId: sId,
            status: status,
            duration: duration,
            photoUrl: photoUrl,
            type: type,
            location: location,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

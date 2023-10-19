// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackRecord> _$feedbackRecordSerializer =
    new _$FeedbackRecordSerializer();

class _$FeedbackRecordSerializer
    implements StructuredSerializer<FeedbackRecord> {
  @override
  final Iterable<Type> types = const [FeedbackRecord, _$FeedbackRecord];
  @override
  final String wireName = 'FeedbackRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stylistName;
    if (value != null) {
      result
        ..add('stylist_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.feedback;
    if (value != null) {
      result
        ..add('feedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.starvalue;
    if (value != null) {
      result
        ..add('starvalue')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sId;
    if (value != null) {
      result
        ..add('sId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
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
  FeedbackRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'stylist_name':
          result.stylistName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feedback':
          result.feedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starvalue':
          result.starvalue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sId':
          result.sId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
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

class _$FeedbackRecord extends FeedbackRecord {
  @override
  final String username;
  @override
  final String stylistName;
  @override
  final String feedback;
  @override
  final int starvalue;
  @override
  final DateTime date;
  @override
  final String sId;
  @override
  final String userid;
  @override
  final DocumentReference<Object> reference;

  factory _$FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =>
      (new FeedbackRecordBuilder()..update(updates)).build();

  _$FeedbackRecord._(
      {this.username,
      this.stylistName,
      this.feedback,
      this.starvalue,
      this.date,
      this.sId,
      this.userid,
      this.reference})
      : super._();

  @override
  FeedbackRecord rebuild(void Function(FeedbackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackRecordBuilder toBuilder() =>
      new FeedbackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackRecord &&
        username == other.username &&
        stylistName == other.stylistName &&
        feedback == other.feedback &&
        starvalue == other.starvalue &&
        date == other.date &&
        sId == other.sId &&
        userid == other.userid &&
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
                            $jc($jc(0, username.hashCode),
                                stylistName.hashCode),
                            feedback.hashCode),
                        starvalue.hashCode),
                    date.hashCode),
                sId.hashCode),
            userid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackRecord')
          ..add('username', username)
          ..add('stylistName', stylistName)
          ..add('feedback', feedback)
          ..add('starvalue', starvalue)
          ..add('date', date)
          ..add('sId', sId)
          ..add('userid', userid)
          ..add('reference', reference))
        .toString();
  }
}

class FeedbackRecordBuilder
    implements Builder<FeedbackRecord, FeedbackRecordBuilder> {
  _$FeedbackRecord _$v;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _stylistName;
  String get stylistName => _$this._stylistName;
  set stylistName(String stylistName) => _$this._stylistName = stylistName;

  String _feedback;
  String get feedback => _$this._feedback;
  set feedback(String feedback) => _$this._feedback = feedback;

  int _starvalue;
  int get starvalue => _$this._starvalue;
  set starvalue(int starvalue) => _$this._starvalue = starvalue;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  String _sId;
  String get sId => _$this._sId;
  set sId(String sId) => _$this._sId = sId;

  String _userid;
  String get userid => _$this._userid;
  set userid(String userid) => _$this._userid = userid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  FeedbackRecordBuilder() {
    FeedbackRecord._initializeBuilder(this);
  }

  FeedbackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _stylistName = $v.stylistName;
      _feedback = $v.feedback;
      _starvalue = $v.starvalue;
      _date = $v.date;
      _sId = $v.sId;
      _userid = $v.userid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbackRecord;
  }

  @override
  void update(void Function(FeedbackRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackRecord build() {
    final _$result = _$v ??
        new _$FeedbackRecord._(
            username: username,
            stylistName: stylistName,
            feedback: feedback,
            starvalue: starvalue,
            date: date,
            sId: sId,
            userid: userid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

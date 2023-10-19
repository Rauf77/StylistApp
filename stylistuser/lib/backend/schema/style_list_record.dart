import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'style_list_record.g.dart';

abstract class StyleListRecord
    implements Built<StyleListRecord, StyleListRecordBuilder> {
  static Serializer<StyleListRecord> get serializer =>
      _$styleListRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'major_works')
  String get majorWorks;

  @nullable
  String get bio;

  @nullable
  String get timeSlot;

  @nullable
  String get type;
  @nullable
  double get lat;
  @nullable
  double get lng;



  @nullable
  bool get onField;

  @nullable
  bool get verify;
  @nullable
  int get startTime;
  @nullable
  int get endTime;
  @nullable
  int get duration;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(StyleListRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..majorWorks = ''
    ..bio = ''
    ..onField = false
    ..verify = false
    ..timeSlot = ''
    ..startTime = 0
    ..endTime = 0
    ..duration = 0
    ..lat = 0.0
    ..lng = 0.0
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('styleList');

  static Stream<StyleListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<StyleListRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  StyleListRecord._();
  factory StyleListRecord([void Function(StyleListRecordBuilder) updates]) =
      _$StyleListRecord;

  static StyleListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createStyleListRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  String type,
  bool onField,
  bool verify,
  String timeSlot,
  DateTime createdTime,
  String phoneNumber,
  String majorWorks,
  String bio,
  int startTime,
  int endTime,
  int duration,
  double lat,
  double lng,

}) =>
    serializers.toFirestore(
        StyleListRecord.serializer,
        StyleListRecord((s) => s
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..type = type
          ..onField = onField
          ..verify = verify
          ..timeSlot = timeSlot
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..majorWorks = majorWorks
          ..startTime=startTime
          ..endTime=endTime
          ..duration=duration
          ..lat=lat
          ..lng=lng
          ..bio = bio));

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_record.g.dart';

abstract class FeedbackRecord
    implements Built<FeedbackRecord, FeedbackRecordBuilder> {
  static Serializer<FeedbackRecord> get serializer =>
      _$feedbackRecordSerializer;

  @nullable
  String get username;

  @nullable
  @BuiltValueField(wireName: 'stylist_name')
  String get stylistName;

  @nullable
  String get feedback;

  @nullable
  int get starvalue;

  @nullable
  DateTime get date;

  @nullable
  String get sId;

  @nullable
  String get userid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeedbackRecordBuilder builder) => builder
    ..username = ''
    ..stylistName = ''
    ..feedback = ''
    ..sId = ''
    ..starvalue = 0
    ..userid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeedbackRecord._();
  factory FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =
      _$FeedbackRecord;

  static FeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeedbackRecordData({
  String username,
  String stylistName,
  String feedback,
  int starvalue,
  DateTime date,
  String userid,
  String sId,
}) =>
    serializers.toFirestore(
        FeedbackRecord.serializer,
        FeedbackRecord((f) => f
          ..username = username
          ..stylistName = stylistName
          ..feedback = feedback
          ..starvalue = starvalue
          ..date = date
          ..sId = sId
          ..userid = userid));

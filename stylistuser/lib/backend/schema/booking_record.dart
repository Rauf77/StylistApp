import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'booking_record.g.dart';

abstract class BookingRecord
    implements Built<BookingRecord, BookingRecordBuilder> {
  static Serializer<BookingRecord> get serializer => _$bookingRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get uname;

  @nullable
  DateTime get time;

  @nullable
  DateTime get slot;



  @nullable
  @BuiltValueField(wireName: 'stylist_name')
  String get stylistName;

  @nullable
  String get sId;


  @nullable
  int get status;
  @nullable
  int get duration;


  @nullable
  String get photoUrl;

  @nullable
  String get type;


  @nullable
  String get location;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BookingRecordBuilder builder) => builder
    ..uid = ''
    ..uname = ''
    ..slot = DateTime.now()
    ..stylistName = ''
    ..sId = ''
    ..photoUrl = ''
    ..location = ''
    ..status = 0
    ..duration = 0
    ..type = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BookingRecord._();
  factory BookingRecord([void Function(BookingRecordBuilder) updates]) =
      _$BookingRecord;

  static BookingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBookingRecordData({
  String uid,
  String uname,
  DateTime time,
  DateTime slot,
  String stylistName,
  String sId,
  String photoUrl,
  int status,
  int duration,
  String location,
  String type,
}) =>
    serializers.toFirestore(
        BookingRecord.serializer,
        BookingRecord((b) => b
          ..uid = uid
          ..uname = uname
          ..time = time
          ..slot = slot
          ..stylistName = stylistName
          ..sId = sId
          ..status = status
          ..photoUrl = photoUrl
          ..location = location
          ..duration = duration
          ..type = type));

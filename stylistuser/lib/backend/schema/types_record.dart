import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'types_record.g.dart';

abstract class TypesRecord implements Built<TypesRecord, TypesRecordBuilder> {
  static Serializer<TypesRecord> get serializer => _$typesRecordSerializer;

  @nullable
  String get id;

  @nullable
  String get types;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TypesRecordBuilder builder) => builder
    ..id = ''
    ..types = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('types');

  static Stream<TypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TypesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TypesRecord._();
  factory TypesRecord([void Function(TypesRecordBuilder) updates]) =
      _$TypesRecord;

  static TypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTypesRecordData({
  String id,
  String types,
}) =>
    serializers.toFirestore(
        TypesRecord.serializer,
        TypesRecord((t) => t
          ..id = id
          ..types = types));

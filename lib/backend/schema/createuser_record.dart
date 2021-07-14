import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'createuser_record.g.dart';

abstract class CreateuserRecord
    implements Built<CreateuserRecord, CreateuserRecordBuilder> {
  static Serializer<CreateuserRecord> get serializer =>
      _$createuserRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CreateuserRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('createuser');

  static Stream<CreateuserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CreateuserRecord._();
  factory CreateuserRecord([void Function(CreateuserRecordBuilder) updates]) =
      _$CreateuserRecord;

  static CreateuserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createCreateuserRecordData({
  String displayName,
  String email,
  DateTime createdTime,
  String photoUrl,
  String uid,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        CreateuserRecord.serializer,
        CreateuserRecord((c) => c
          ..displayName = displayName
          ..email = email
          ..createdTime = createdTime
          ..photoUrl = photoUrl
          ..uid = uid
          ..phoneNumber = phoneNumber));

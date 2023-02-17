import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'folders_record.g.dart';

abstract class FoldersRecord
    implements Built<FoldersRecord, FoldersRecordBuilder> {
  static Serializer<FoldersRecord> get serializer => _$foldersRecordSerializer;

  DocumentReference? get owner;

  Color? get color;

  String? get name;

  BuiltList<DocumentReference>? get folders;

  @BuiltValueField(wireName: 'parent_folder')
  DocumentReference? get parentFolder;

  BuiltList<DocumentReference>? get files;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FoldersRecordBuilder builder) => builder
    ..name = ''
    ..folders = ListBuilder()
    ..files = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('folders')
          : FirebaseFirestore.instance.collectionGroup('folders');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('folders').doc();

  static Stream<FoldersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FoldersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FoldersRecord._();
  factory FoldersRecord([void Function(FoldersRecordBuilder) updates]) =
      _$FoldersRecord;

  static FoldersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFoldersRecordData({
  DocumentReference? owner,
  Color? color,
  String? name,
  DocumentReference? parentFolder,
}) {
  final firestoreData = serializers.toFirestore(
    FoldersRecord.serializer,
    FoldersRecord(
      (f) => f
        ..owner = owner
        ..color = color
        ..name = name
        ..folders = null
        ..parentFolder = parentFolder
        ..files = null,
    ),
  );

  return firestoreData;
}

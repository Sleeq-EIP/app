import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilesRecord extends FirestoreRecord {
  FilesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  bool hasFileUrl() => _fileUrl != null;

  // "containing_folder" field.
  DocumentReference? _containingFolder;
  DocumentReference? get containingFolder => _containingFolder;
  bool hasContainingFolder() => _containingFolder != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _tags = getDataList(snapshotData['tags']);
    _created = snapshotData['created'] as DateTime?;
    _fileUrl = snapshotData['file_url'] as String?;
    _containingFolder = snapshotData['containing_folder'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('files')
          : FirebaseFirestore.instance.collectionGroup('files');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('files').doc();

  static Stream<FilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FilesRecord.fromSnapshot(s));

  static Future<FilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FilesRecord.fromSnapshot(s));

  static FilesRecord fromSnapshot(DocumentSnapshot snapshot) => FilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFilesRecordData({
  DocumentReference? owner,
  String? name,
  Color? color,
  DateTime? created,
  String? fileUrl,
  DocumentReference? containingFolder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'name': name,
      'color': color,
      'created': created,
      'file_url': fileUrl,
      'containing_folder': containingFolder,
    }.withoutNulls,
  );

  return firestoreData;
}

class FilesRecordDocumentEquality implements Equality<FilesRecord> {
  const FilesRecordDocumentEquality();

  @override
  bool equals(FilesRecord? e1, FilesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.name == e2?.name &&
        e1?.color == e2?.color &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.created == e2?.created &&
        e1?.fileUrl == e2?.fileUrl &&
        e1?.containingFolder == e2?.containingFolder;
  }

  @override
  int hash(FilesRecord? e) => const ListEquality().hash([
        e?.owner,
        e?.name,
        e?.color,
        e?.tags,
        e?.created,
        e?.fileUrl,
        e?.containingFolder
      ]);

  @override
  bool isValidKey(Object? o) => o is FilesRecord;
}

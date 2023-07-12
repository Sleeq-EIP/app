import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FoldersRecord extends FirestoreRecord {
  FoldersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "folders" field.
  List<DocumentReference>? _folders;
  List<DocumentReference> get folders => _folders ?? const [];
  bool hasFolders() => _folders != null;

  // "parent_folder" field.
  DocumentReference? _parentFolder;
  DocumentReference? get parentFolder => _parentFolder;
  bool hasParentFolder() => _parentFolder != null;

  // "files" field.
  List<DocumentReference>? _files;
  List<DocumentReference> get files => _files ?? const [];
  bool hasFiles() => _files != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _owner = snapshotData['owner'] as DocumentReference?;
    _color = getSchemaColor(snapshotData['color']);
    _name = snapshotData['name'] as String?;
    _folders = getDataList(snapshotData['folders']);
    _parentFolder = snapshotData['parent_folder'] as DocumentReference?;
    _files = getDataList(snapshotData['files']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('folders')
          : FirebaseFirestore.instance.collectionGroup('folders');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('folders').doc();

  static Stream<FoldersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FoldersRecord.fromSnapshot(s));

  static Future<FoldersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FoldersRecord.fromSnapshot(s));

  static FoldersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FoldersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FoldersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FoldersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FoldersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FoldersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFoldersRecordData({
  DocumentReference? owner,
  Color? color,
  String? name,
  DocumentReference? parentFolder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner': owner,
      'color': color,
      'name': name,
      'parent_folder': parentFolder,
    }.withoutNulls,
  );

  return firestoreData;
}

class FoldersRecordDocumentEquality implements Equality<FoldersRecord> {
  const FoldersRecordDocumentEquality();

  @override
  bool equals(FoldersRecord? e1, FoldersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.owner == e2?.owner &&
        e1?.color == e2?.color &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.folders, e2?.folders) &&
        e1?.parentFolder == e2?.parentFolder &&
        listEquality.equals(e1?.files, e2?.files);
  }

  @override
  int hash(FoldersRecord? e) => const ListEquality().hash(
      [e?.owner, e?.color, e?.name, e?.folders, e?.parentFolder, e?.files]);

  @override
  bool isValidKey(Object? o) => o is FoldersRecord;
}

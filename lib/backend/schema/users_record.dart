import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "occupied_size" field.
  double? _occupiedSize;
  double get occupiedSize => _occupiedSize ?? 0.0;
  bool hasOccupiedSize() => _occupiedSize != null;

  // "is_subscriber" field.
  bool? _isSubscriber;
  bool get isSubscriber => _isSubscriber ?? false;
  bool hasIsSubscriber() => _isSubscriber != null;

  // "root_folder" field.
  DocumentReference? _rootFolder;
  DocumentReference? get rootFolder => _rootFolder;
  bool hasRootFolder() => _rootFolder != null;

  // "english" field.
  bool? _english;
  bool get english => _english ?? false;
  bool hasEnglish() => _english != null;

  // "subcription_id" field.
  String? _subcriptionId;
  String get subcriptionId => _subcriptionId ?? '';
  bool hasSubcriptionId() => _subcriptionId != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _occupiedSize = castToType<double>(snapshotData['occupied_size']);
    _isSubscriber = snapshotData['is_subscriber'] as bool?;
    _rootFolder = snapshotData['root_folder'] as DocumentReference?;
    _english = snapshotData['english'] as bool?;
    _subcriptionId = snapshotData['subcription_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  double? occupiedSize,
  bool? isSubscriber,
  DocumentReference? rootFolder,
  bool? english,
  String? subcriptionId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'occupied_size': occupiedSize,
      'is_subscriber': isSubscriber,
      'root_folder': rootFolder,
      'english': english,
      'subcription_id': subcriptionId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.occupiedSize == e2?.occupiedSize &&
        e1?.isSubscriber == e2?.isSubscriber &&
        e1?.rootFolder == e2?.rootFolder &&
        e1?.english == e2?.english &&
        e1?.subcriptionId == e2?.subcriptionId;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.occupiedSize,
        e?.isSubscriber,
        e?.rootFolder,
        e?.english,
        e?.subcriptionId
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}

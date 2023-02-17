// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FoldersRecord> _$foldersRecordSerializer =
    new _$FoldersRecordSerializer();

class _$FoldersRecordSerializer implements StructuredSerializer<FoldersRecord> {
  @override
  final Iterable<Type> types = const [FoldersRecord, _$FoldersRecord];
  @override
  final String wireName = 'FoldersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FoldersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.owner;
    if (value != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.folders;
    if (value != null) {
      result
        ..add('folders')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.parentFolder;
    if (value != null) {
      result
        ..add('parent_folder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FoldersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FoldersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'owner':
          result.owner = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'folders':
          result.folders.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'parent_folder':
          result.parentFolder = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FoldersRecord extends FoldersRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final Color? color;
  @override
  final String? name;
  @override
  final BuiltList<DocumentReference<Object?>>? folders;
  @override
  final DocumentReference<Object?>? parentFolder;
  @override
  final BuiltList<DocumentReference<Object?>>? files;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FoldersRecord([void Function(FoldersRecordBuilder)? updates]) =>
      (new FoldersRecordBuilder()..update(updates))._build();

  _$FoldersRecord._(
      {this.owner,
      this.color,
      this.name,
      this.folders,
      this.parentFolder,
      this.files,
      this.ffRef})
      : super._();

  @override
  FoldersRecord rebuild(void Function(FoldersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FoldersRecordBuilder toBuilder() => new FoldersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FoldersRecord &&
        owner == other.owner &&
        color == other.color &&
        name == other.name &&
        folders == other.folders &&
        parentFolder == other.parentFolder &&
        files == other.files &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, owner.hashCode), color.hashCode),
                        name.hashCode),
                    folders.hashCode),
                parentFolder.hashCode),
            files.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FoldersRecord')
          ..add('owner', owner)
          ..add('color', color)
          ..add('name', name)
          ..add('folders', folders)
          ..add('parentFolder', parentFolder)
          ..add('files', files)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FoldersRecordBuilder
    implements Builder<FoldersRecord, FoldersRecordBuilder> {
  _$FoldersRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  Color? _color;
  Color? get color => _$this._color;
  set color(Color? color) => _$this._color = color;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<DocumentReference<Object?>>? _folders;
  ListBuilder<DocumentReference<Object?>> get folders =>
      _$this._folders ??= new ListBuilder<DocumentReference<Object?>>();
  set folders(ListBuilder<DocumentReference<Object?>>? folders) =>
      _$this._folders = folders;

  DocumentReference<Object?>? _parentFolder;
  DocumentReference<Object?>? get parentFolder => _$this._parentFolder;
  set parentFolder(DocumentReference<Object?>? parentFolder) =>
      _$this._parentFolder = parentFolder;

  ListBuilder<DocumentReference<Object?>>? _files;
  ListBuilder<DocumentReference<Object?>> get files =>
      _$this._files ??= new ListBuilder<DocumentReference<Object?>>();
  set files(ListBuilder<DocumentReference<Object?>>? files) =>
      _$this._files = files;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FoldersRecordBuilder() {
    FoldersRecord._initializeBuilder(this);
  }

  FoldersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _color = $v.color;
      _name = $v.name;
      _folders = $v.folders?.toBuilder();
      _parentFolder = $v.parentFolder;
      _files = $v.files?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoldersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FoldersRecord;
  }

  @override
  void update(void Function(FoldersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FoldersRecord build() => _build();

  _$FoldersRecord _build() {
    _$FoldersRecord _$result;
    try {
      _$result = _$v ??
          new _$FoldersRecord._(
              owner: owner,
              color: color,
              name: name,
              folders: _folders?.build(),
              parentFolder: parentFolder,
              files: _files?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'folders';
        _folders?.build();

        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FoldersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

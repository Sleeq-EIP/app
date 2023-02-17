// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'files_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilesRecord> _$filesRecordSerializer = new _$FilesRecordSerializer();

class _$FilesRecordSerializer implements StructuredSerializer<FilesRecord> {
  @override
  final Iterable<Type> types = const [FilesRecord, _$FilesRecord];
  @override
  final String wireName = 'FilesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FilesRecord object,
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
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.created;
    if (value != null) {
      result
        ..add('created')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fileUrl;
    if (value != null) {
      result
        ..add('file_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.containingFolder;
    if (value != null) {
      result
        ..add('containing_folder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  FilesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilesRecordBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'file_url':
          result.fileUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'containing_folder':
          result.containingFolder = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$FilesRecord extends FilesRecord {
  @override
  final DocumentReference<Object?>? owner;
  @override
  final String? name;
  @override
  final Color? color;
  @override
  final BuiltList<String>? tags;
  @override
  final DateTime? created;
  @override
  final String? fileUrl;
  @override
  final DocumentReference<Object?>? containingFolder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FilesRecord([void Function(FilesRecordBuilder)? updates]) =>
      (new FilesRecordBuilder()..update(updates))._build();

  _$FilesRecord._(
      {this.owner,
      this.name,
      this.color,
      this.tags,
      this.created,
      this.fileUrl,
      this.containingFolder,
      this.ffRef})
      : super._();

  @override
  FilesRecord rebuild(void Function(FilesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilesRecordBuilder toBuilder() => new FilesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilesRecord &&
        owner == other.owner &&
        name == other.name &&
        color == other.color &&
        tags == other.tags &&
        created == other.created &&
        fileUrl == other.fileUrl &&
        containingFolder == other.containingFolder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, owner.hashCode), name.hashCode),
                            color.hashCode),
                        tags.hashCode),
                    created.hashCode),
                fileUrl.hashCode),
            containingFolder.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilesRecord')
          ..add('owner', owner)
          ..add('name', name)
          ..add('color', color)
          ..add('tags', tags)
          ..add('created', created)
          ..add('fileUrl', fileUrl)
          ..add('containingFolder', containingFolder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FilesRecordBuilder implements Builder<FilesRecord, FilesRecordBuilder> {
  _$FilesRecord? _$v;

  DocumentReference<Object?>? _owner;
  DocumentReference<Object?>? get owner => _$this._owner;
  set owner(DocumentReference<Object?>? owner) => _$this._owner = owner;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Color? _color;
  Color? get color => _$this._color;
  set color(Color? color) => _$this._color = color;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  DateTime? _created;
  DateTime? get created => _$this._created;
  set created(DateTime? created) => _$this._created = created;

  String? _fileUrl;
  String? get fileUrl => _$this._fileUrl;
  set fileUrl(String? fileUrl) => _$this._fileUrl = fileUrl;

  DocumentReference<Object?>? _containingFolder;
  DocumentReference<Object?>? get containingFolder => _$this._containingFolder;
  set containingFolder(DocumentReference<Object?>? containingFolder) =>
      _$this._containingFolder = containingFolder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FilesRecordBuilder() {
    FilesRecord._initializeBuilder(this);
  }

  FilesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _name = $v.name;
      _color = $v.color;
      _tags = $v.tags?.toBuilder();
      _created = $v.created;
      _fileUrl = $v.fileUrl;
      _containingFolder = $v.containingFolder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilesRecord;
  }

  @override
  void update(void Function(FilesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilesRecord build() => _build();

  _$FilesRecord _build() {
    _$FilesRecord _$result;
    try {
      _$result = _$v ??
          new _$FilesRecord._(
              owner: owner,
              name: name,
              color: color,
              tags: _tags?.build(),
              created: created,
              fileUrl: fileUrl,
              containingFolder: containingFolder,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FilesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

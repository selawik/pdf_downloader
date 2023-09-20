// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $DocumentTableTable extends DocumentTable
    with TableInfo<$DocumentTableTable, DocumentDbEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocumentTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _documentIdMeta =
      const VerificationMeta('documentId');
  @override
  late final GeneratedColumn<int> documentId = GeneratedColumn<int>(
      'document_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _documentStatusMeta =
      const VerificationMeta('documentStatus');
  @override
  late final GeneratedColumnWithTypeConverter<DocumentStatus, int>
      documentStatus = GeneratedColumn<int>(
              'document_status', aliasedName, false,
              type: DriftSqlType.int, requiredDuringInsert: true)
          .withConverter<DocumentStatus>(
              $DocumentTableTable.$converterdocumentStatus);
  static const VerificationMeta _filePathMeta =
      const VerificationMeta('filePath');
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
      'file_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [documentId, name, url, documentStatus, filePath];
  @override
  String get aliasedName => _alias ?? 'document_table';
  @override
  String get actualTableName => 'document_table';
  @override
  VerificationContext validateIntegrity(Insertable<DocumentDbEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('document_id')) {
      context.handle(
          _documentIdMeta,
          documentId.isAcceptableOrUnknown(
              data['document_id']!, _documentIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    context.handle(_documentStatusMeta, const VerificationResult.success());
    if (data.containsKey('file_path')) {
      context.handle(_filePathMeta,
          filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {documentId};
  @override
  DocumentDbEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocumentDbEntity(
      documentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}document_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      documentStatus: $DocumentTableTable.$converterdocumentStatus.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.int, data['${effectivePrefix}document_status'])!),
      filePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_path']),
    );
  }

  @override
  $DocumentTableTable createAlias(String alias) {
    return $DocumentTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<DocumentStatus, int, int> $converterdocumentStatus =
      const EnumIndexConverter<DocumentStatus>(DocumentStatus.values);
}

class DocumentDbEntity extends DataClass
    implements Insertable<DocumentDbEntity> {
  final int documentId;
  final String name;
  final String url;
  final DocumentStatus documentStatus;
  final String? filePath;
  const DocumentDbEntity(
      {required this.documentId,
      required this.name,
      required this.url,
      required this.documentStatus,
      this.filePath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['document_id'] = Variable<int>(documentId);
    map['name'] = Variable<String>(name);
    map['url'] = Variable<String>(url);
    {
      final converter = $DocumentTableTable.$converterdocumentStatus;
      map['document_status'] = Variable<int>(converter.toSql(documentStatus));
    }
    if (!nullToAbsent || filePath != null) {
      map['file_path'] = Variable<String>(filePath);
    }
    return map;
  }

  DocumentTableCompanion toCompanion(bool nullToAbsent) {
    return DocumentTableCompanion(
      documentId: Value(documentId),
      name: Value(name),
      url: Value(url),
      documentStatus: Value(documentStatus),
      filePath: filePath == null && nullToAbsent
          ? const Value.absent()
          : Value(filePath),
    );
  }

  factory DocumentDbEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DocumentDbEntity(
      documentId: serializer.fromJson<int>(json['documentId']),
      name: serializer.fromJson<String>(json['name']),
      url: serializer.fromJson<String>(json['url']),
      documentStatus: $DocumentTableTable.$converterdocumentStatus
          .fromJson(serializer.fromJson<int>(json['documentStatus'])),
      filePath: serializer.fromJson<String?>(json['filePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'documentId': serializer.toJson<int>(documentId),
      'name': serializer.toJson<String>(name),
      'url': serializer.toJson<String>(url),
      'documentStatus': serializer.toJson<int>(
          $DocumentTableTable.$converterdocumentStatus.toJson(documentStatus)),
      'filePath': serializer.toJson<String?>(filePath),
    };
  }

  DocumentDbEntity copyWith(
          {int? documentId,
          String? name,
          String? url,
          DocumentStatus? documentStatus,
          Value<String?> filePath = const Value.absent()}) =>
      DocumentDbEntity(
        documentId: documentId ?? this.documentId,
        name: name ?? this.name,
        url: url ?? this.url,
        documentStatus: documentStatus ?? this.documentStatus,
        filePath: filePath.present ? filePath.value : this.filePath,
      );
  @override
  String toString() {
    return (StringBuffer('DocumentDbEntity(')
          ..write('documentId: $documentId, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('documentStatus: $documentStatus, ')
          ..write('filePath: $filePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(documentId, name, url, documentStatus, filePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentDbEntity &&
          other.documentId == this.documentId &&
          other.name == this.name &&
          other.url == this.url &&
          other.documentStatus == this.documentStatus &&
          other.filePath == this.filePath);
}

class DocumentTableCompanion extends UpdateCompanion<DocumentDbEntity> {
  final Value<int> documentId;
  final Value<String> name;
  final Value<String> url;
  final Value<DocumentStatus> documentStatus;
  final Value<String?> filePath;
  const DocumentTableCompanion({
    this.documentId = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
    this.documentStatus = const Value.absent(),
    this.filePath = const Value.absent(),
  });
  DocumentTableCompanion.insert({
    this.documentId = const Value.absent(),
    required String name,
    required String url,
    required DocumentStatus documentStatus,
    this.filePath = const Value.absent(),
  })  : name = Value(name),
        url = Value(url),
        documentStatus = Value(documentStatus);
  static Insertable<DocumentDbEntity> custom({
    Expression<int>? documentId,
    Expression<String>? name,
    Expression<String>? url,
    Expression<int>? documentStatus,
    Expression<String>? filePath,
  }) {
    return RawValuesInsertable({
      if (documentId != null) 'document_id': documentId,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (documentStatus != null) 'document_status': documentStatus,
      if (filePath != null) 'file_path': filePath,
    });
  }

  DocumentTableCompanion copyWith(
      {Value<int>? documentId,
      Value<String>? name,
      Value<String>? url,
      Value<DocumentStatus>? documentStatus,
      Value<String?>? filePath}) {
    return DocumentTableCompanion(
      documentId: documentId ?? this.documentId,
      name: name ?? this.name,
      url: url ?? this.url,
      documentStatus: documentStatus ?? this.documentStatus,
      filePath: filePath ?? this.filePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (documentId.present) {
      map['document_id'] = Variable<int>(documentId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (documentStatus.present) {
      final converter = $DocumentTableTable.$converterdocumentStatus;
      map['document_status'] =
          Variable<int>(converter.toSql(documentStatus.value));
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTableCompanion(')
          ..write('documentId: $documentId, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('documentStatus: $documentStatus, ')
          ..write('filePath: $filePath')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $DocumentTableTable documentTable = $DocumentTableTable(this);
  late final DocumentDao documentDao = DocumentDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [documentTable];
}

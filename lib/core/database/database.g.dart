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
  @override
  List<GeneratedColumn> get $columns => [documentId, name, url, documentStatus];
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
  const DocumentDbEntity(
      {required this.documentId,
      required this.name,
      required this.url,
      required this.documentStatus});
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
    return map;
  }

  DocumentTableCompanion toCompanion(bool nullToAbsent) {
    return DocumentTableCompanion(
      documentId: Value(documentId),
      name: Value(name),
      url: Value(url),
      documentStatus: Value(documentStatus),
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
    };
  }

  DocumentDbEntity copyWith(
          {int? documentId,
          String? name,
          String? url,
          DocumentStatus? documentStatus}) =>
      DocumentDbEntity(
        documentId: documentId ?? this.documentId,
        name: name ?? this.name,
        url: url ?? this.url,
        documentStatus: documentStatus ?? this.documentStatus,
      );
  @override
  String toString() {
    return (StringBuffer('DocumentDbEntity(')
          ..write('documentId: $documentId, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('documentStatus: $documentStatus')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(documentId, name, url, documentStatus);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DocumentDbEntity &&
          other.documentId == this.documentId &&
          other.name == this.name &&
          other.url == this.url &&
          other.documentStatus == this.documentStatus);
}

class DocumentTableCompanion extends UpdateCompanion<DocumentDbEntity> {
  final Value<int> documentId;
  final Value<String> name;
  final Value<String> url;
  final Value<DocumentStatus> documentStatus;
  const DocumentTableCompanion({
    this.documentId = const Value.absent(),
    this.name = const Value.absent(),
    this.url = const Value.absent(),
    this.documentStatus = const Value.absent(),
  });
  DocumentTableCompanion.insert({
    this.documentId = const Value.absent(),
    required String name,
    required String url,
    required DocumentStatus documentStatus,
  })  : name = Value(name),
        url = Value(url),
        documentStatus = Value(documentStatus);
  static Insertable<DocumentDbEntity> custom({
    Expression<int>? documentId,
    Expression<String>? name,
    Expression<String>? url,
    Expression<int>? documentStatus,
  }) {
    return RawValuesInsertable({
      if (documentId != null) 'document_id': documentId,
      if (name != null) 'name': name,
      if (url != null) 'url': url,
      if (documentStatus != null) 'document_status': documentStatus,
    });
  }

  DocumentTableCompanion copyWith(
      {Value<int>? documentId,
      Value<String>? name,
      Value<String>? url,
      Value<DocumentStatus>? documentStatus}) {
    return DocumentTableCompanion(
      documentId: documentId ?? this.documentId,
      name: name ?? this.name,
      url: url ?? this.url,
      documentStatus: documentStatus ?? this.documentStatus,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocumentTableCompanion(')
          ..write('documentId: $documentId, ')
          ..write('name: $name, ')
          ..write('url: $url, ')
          ..write('documentStatus: $documentStatus')
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

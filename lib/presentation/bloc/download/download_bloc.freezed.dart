// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadEvent {
  Document get document => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Document document) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Document document)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Document document)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Download value) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Download value)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Download value)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadEventCopyWith<DownloadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res, DownloadEvent>;
  @useResult
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res, $Val extends DownloadEvent>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DownloadCopyWith<$Res>
    implements $DownloadEventCopyWith<$Res> {
  factory _$$_DownloadCopyWith(
          _$_Download value, $Res Function(_$_Download) then) =
      __$$_DownloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$_DownloadCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res, _$_Download>
    implements _$$_DownloadCopyWith<$Res> {
  __$$_DownloadCopyWithImpl(
      _$_Download _value, $Res Function(_$_Download) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_Download(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$_Download implements _Download {
  const _$_Download({required this.document});

  @override
  final Document document;

  @override
  String toString() {
    return 'DownloadEvent.download(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Download &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      __$$_DownloadCopyWithImpl<_$_Download>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Document document) download,
  }) {
    return download(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Document document)? download,
  }) {
    return download?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Document document)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Download value) download,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Download value)? download,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Download value)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _Download implements DownloadEvent {
  const factory _Download({required final Document document}) = _$_Download;

  @override
  Document get document;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadState {
  Document get document => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Document document) documentReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Document document)? documentReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Document document)? documentReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentReady value) documentReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentReady value)? documentReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentReady value)? documentReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call({Document document});

  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_value.copyWith(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentCopyWith<$Res> get document {
    return $DocumentCopyWith<$Res>(_value.document, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentReadyCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$_DocumentReadyCopyWith(
          _$_DocumentReady value, $Res Function(_$_DocumentReady) then) =
      __$$_DocumentReadyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Document document});

  @override
  $DocumentCopyWith<$Res> get document;
}

/// @nodoc
class __$$_DocumentReadyCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$_DocumentReady>
    implements _$$_DocumentReadyCopyWith<$Res> {
  __$$_DocumentReadyCopyWithImpl(
      _$_DocumentReady _value, $Res Function(_$_DocumentReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$_DocumentReady(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Document,
    ));
  }
}

/// @nodoc

class _$_DocumentReady implements _DocumentReady {
  const _$_DocumentReady({required this.document});

  @override
  final Document document;

  @override
  String toString() {
    return 'DownloadState.documentReady(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentReady &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @override
  int get hashCode => Object.hash(runtimeType, document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentReadyCopyWith<_$_DocumentReady> get copyWith =>
      __$$_DocumentReadyCopyWithImpl<_$_DocumentReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Document document) documentReady,
  }) {
    return documentReady(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Document document)? documentReady,
  }) {
    return documentReady?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Document document)? documentReady,
    required TResult orElse(),
  }) {
    if (documentReady != null) {
      return documentReady(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DocumentReady value) documentReady,
  }) {
    return documentReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DocumentReady value)? documentReady,
  }) {
    return documentReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DocumentReady value)? documentReady,
    required TResult orElse(),
  }) {
    if (documentReady != null) {
      return documentReady(this);
    }
    return orElse();
  }
}

abstract class _DocumentReady implements DownloadState {
  const factory _DocumentReady({required final Document document}) =
      _$_DocumentReady;

  @override
  Document get document;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentReadyCopyWith<_$_DocumentReady> get copyWith =>
      throw _privateConstructorUsedError;
}

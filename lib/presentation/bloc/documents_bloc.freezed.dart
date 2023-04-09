// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) addDocument,
    required TResult Function() loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? addDocument,
    TResult? Function()? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? addDocument,
    TResult Function()? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_LoadList value) loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDocument value)? addDocument,
    TResult? Function(_LoadList value)? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_LoadList value)? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsEventCopyWith<$Res> {
  factory $DocumentsEventCopyWith(
          DocumentsEvent value, $Res Function(DocumentsEvent) then) =
      _$DocumentsEventCopyWithImpl<$Res, DocumentsEvent>;
}

/// @nodoc
class _$DocumentsEventCopyWithImpl<$Res, $Val extends DocumentsEvent>
    implements $DocumentsEventCopyWith<$Res> {
  _$DocumentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AddDocumentCopyWith<$Res> {
  factory _$$_AddDocumentCopyWith(
          _$_AddDocument value, $Res Function(_$_AddDocument) then) =
      __$$_AddDocumentCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$_AddDocumentCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$_AddDocument>
    implements _$$_AddDocumentCopyWith<$Res> {
  __$$_AddDocumentCopyWithImpl(
      _$_AddDocument _value, $Res Function(_$_AddDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_AddDocument(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddDocument implements _AddDocument {
  const _$_AddDocument(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'DocumentsEvent.addDocument(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddDocument &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddDocumentCopyWith<_$_AddDocument> get copyWith =>
      __$$_AddDocumentCopyWithImpl<_$_AddDocument>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) addDocument,
    required TResult Function() loadList,
  }) {
    return addDocument(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? addDocument,
    TResult? Function()? loadList,
  }) {
    return addDocument?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? addDocument,
    TResult Function()? loadList,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_LoadList value) loadList,
  }) {
    return addDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDocument value)? addDocument,
    TResult? Function(_LoadList value)? loadList,
  }) {
    return addDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_LoadList value)? loadList,
    required TResult orElse(),
  }) {
    if (addDocument != null) {
      return addDocument(this);
    }
    return orElse();
  }
}

abstract class _AddDocument implements DocumentsEvent {
  const factory _AddDocument(final String url) = _$_AddDocument;

  String get url;
  @JsonKey(ignore: true)
  _$$_AddDocumentCopyWith<_$_AddDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadListCopyWith<$Res> {
  factory _$$_LoadListCopyWith(
          _$_LoadList value, $Res Function(_$_LoadList) then) =
      __$$_LoadListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadListCopyWithImpl<$Res>
    extends _$DocumentsEventCopyWithImpl<$Res, _$_LoadList>
    implements _$$_LoadListCopyWith<$Res> {
  __$$_LoadListCopyWithImpl(
      _$_LoadList _value, $Res Function(_$_LoadList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadList implements _LoadList {
  const _$_LoadList();

  @override
  String toString() {
    return 'DocumentsEvent.loadList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) addDocument,
    required TResult Function() loadList,
  }) {
    return loadList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url)? addDocument,
    TResult? Function()? loadList,
  }) {
    return loadList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? addDocument,
    TResult Function()? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDocument value) addDocument,
    required TResult Function(_LoadList value) loadList,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDocument value)? addDocument,
    TResult? Function(_LoadList value)? loadList,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDocument value)? addDocument,
    TResult Function(_LoadList value)? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class _LoadList implements DocumentsEvent {
  const factory _LoadList() = _$_LoadList;
}

/// @nodoc
mixin _$DocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Document> documents) listIsReady,
    required TResult Function() isLoading,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Document> documents)? listIsReady,
    TResult? Function()? isLoading,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Document> documents)? listIsReady,
    TResult Function()? isLoading,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListIsReady value) listIsReady,
    required TResult Function(_isLoading value) isLoading,
    required TResult Function(_isEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListIsReady value)? listIsReady,
    TResult? Function(_isLoading value)? isLoading,
    TResult? Function(_isEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListIsReady value)? listIsReady,
    TResult Function(_isLoading value)? isLoading,
    TResult Function(_isEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
          DocumentsState value, $Res Function(DocumentsState) then) =
      _$DocumentsStateCopyWithImpl<$Res, DocumentsState>;
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res, $Val extends DocumentsState>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ListIsReadyCopyWith<$Res> {
  factory _$$_ListIsReadyCopyWith(
          _$_ListIsReady value, $Res Function(_$_ListIsReady) then) =
      __$$_ListIsReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Document> documents});
}

/// @nodoc
class __$$_ListIsReadyCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$_ListIsReady>
    implements _$$_ListIsReadyCopyWith<$Res> {
  __$$_ListIsReadyCopyWithImpl(
      _$_ListIsReady _value, $Res Function(_$_ListIsReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
  }) {
    return _then(_$_ListIsReady(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Document>,
    ));
  }
}

/// @nodoc

class _$_ListIsReady implements _ListIsReady {
  const _$_ListIsReady({required final List<Document> documents})
      : _documents = documents;

  final List<Document> _documents;
  @override
  List<Document> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  String toString() {
    return 'DocumentsState.listIsReady(documents: $documents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListIsReady &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_documents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListIsReadyCopyWith<_$_ListIsReady> get copyWith =>
      __$$_ListIsReadyCopyWithImpl<_$_ListIsReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Document> documents) listIsReady,
    required TResult Function() isLoading,
    required TResult Function() empty,
  }) {
    return listIsReady(documents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Document> documents)? listIsReady,
    TResult? Function()? isLoading,
    TResult? Function()? empty,
  }) {
    return listIsReady?.call(documents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Document> documents)? listIsReady,
    TResult Function()? isLoading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (listIsReady != null) {
      return listIsReady(documents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListIsReady value) listIsReady,
    required TResult Function(_isLoading value) isLoading,
    required TResult Function(_isEmpty value) empty,
  }) {
    return listIsReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListIsReady value)? listIsReady,
    TResult? Function(_isLoading value)? isLoading,
    TResult? Function(_isEmpty value)? empty,
  }) {
    return listIsReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListIsReady value)? listIsReady,
    TResult Function(_isLoading value)? isLoading,
    TResult Function(_isEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (listIsReady != null) {
      return listIsReady(this);
    }
    return orElse();
  }
}

abstract class _ListIsReady implements DocumentsState {
  const factory _ListIsReady({required final List<Document> documents}) =
      _$_ListIsReady;

  List<Document> get documents;
  @JsonKey(ignore: true)
  _$$_ListIsReadyCopyWith<_$_ListIsReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_isLoadingCopyWith<$Res> {
  factory _$$_isLoadingCopyWith(
          _$_isLoading value, $Res Function(_$_isLoading) then) =
      __$$_isLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_isLoadingCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$_isLoading>
    implements _$$_isLoadingCopyWith<$Res> {
  __$$_isLoadingCopyWithImpl(
      _$_isLoading _value, $Res Function(_$_isLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_isLoading implements _isLoading {
  const _$_isLoading();

  @override
  String toString() {
    return 'DocumentsState.isLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_isLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Document> documents) listIsReady,
    required TResult Function() isLoading,
    required TResult Function() empty,
  }) {
    return isLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Document> documents)? listIsReady,
    TResult? Function()? isLoading,
    TResult? Function()? empty,
  }) {
    return isLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Document> documents)? listIsReady,
    TResult Function()? isLoading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListIsReady value) listIsReady,
    required TResult Function(_isLoading value) isLoading,
    required TResult Function(_isEmpty value) empty,
  }) {
    return isLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListIsReady value)? listIsReady,
    TResult? Function(_isLoading value)? isLoading,
    TResult? Function(_isEmpty value)? empty,
  }) {
    return isLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListIsReady value)? listIsReady,
    TResult Function(_isLoading value)? isLoading,
    TResult Function(_isEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (isLoading != null) {
      return isLoading(this);
    }
    return orElse();
  }
}

abstract class _isLoading implements DocumentsState {
  const factory _isLoading() = _$_isLoading;
}

/// @nodoc
abstract class _$$_isEmptyCopyWith<$Res> {
  factory _$$_isEmptyCopyWith(
          _$_isEmpty value, $Res Function(_$_isEmpty) then) =
      __$$_isEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_isEmptyCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$_isEmpty>
    implements _$$_isEmptyCopyWith<$Res> {
  __$$_isEmptyCopyWithImpl(_$_isEmpty _value, $Res Function(_$_isEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_isEmpty implements _isEmpty {
  const _$_isEmpty();

  @override
  String toString() {
    return 'DocumentsState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_isEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Document> documents) listIsReady,
    required TResult Function() isLoading,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Document> documents)? listIsReady,
    TResult? Function()? isLoading,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Document> documents)? listIsReady,
    TResult Function()? isLoading,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListIsReady value) listIsReady,
    required TResult Function(_isLoading value) isLoading,
    required TResult Function(_isEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListIsReady value)? listIsReady,
    TResult? Function(_isLoading value)? isLoading,
    TResult? Function(_isEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListIsReady value)? listIsReady,
    TResult Function(_isLoading value)? isLoading,
    TResult Function(_isEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _isEmpty implements DocumentsState {
  const factory _isEmpty() = _$_isEmpty;
}

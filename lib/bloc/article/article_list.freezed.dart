// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleListEventTearOff {
  const _$ArticleListEventTearOff();

  LoadArticleListEvent load() {
    return const LoadArticleListEvent();
  }

  LoadMoreArticleListEvent loadMore() {
    return const LoadMoreArticleListEvent();
  }
}

/// @nodoc
const $ArticleListEvent = _$ArticleListEventTearOff();

/// @nodoc
mixin _$ArticleListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticleListEvent value) load,
    required TResult Function(LoadMoreArticleListEvent value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticleListEvent value)? load,
    TResult Function(LoadMoreArticleListEvent value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListEventCopyWith<$Res> {
  factory $ArticleListEventCopyWith(
          ArticleListEvent value, $Res Function(ArticleListEvent) then) =
      _$ArticleListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleListEventCopyWithImpl<$Res>
    implements $ArticleListEventCopyWith<$Res> {
  _$ArticleListEventCopyWithImpl(this._value, this._then);

  final ArticleListEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleListEvent) _then;
}

/// @nodoc
abstract class $LoadArticleListEventCopyWith<$Res> {
  factory $LoadArticleListEventCopyWith(LoadArticleListEvent value,
          $Res Function(LoadArticleListEvent) then) =
      _$LoadArticleListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadArticleListEventCopyWithImpl<$Res>
    extends _$ArticleListEventCopyWithImpl<$Res>
    implements $LoadArticleListEventCopyWith<$Res> {
  _$LoadArticleListEventCopyWithImpl(
      LoadArticleListEvent _value, $Res Function(LoadArticleListEvent) _then)
      : super(_value, (v) => _then(v as LoadArticleListEvent));

  @override
  LoadArticleListEvent get _value => super._value as LoadArticleListEvent;
}

/// @nodoc

class _$LoadArticleListEvent extends LoadArticleListEvent {
  const _$LoadArticleListEvent() : super._();

  @override
  String toString() {
    return 'ArticleListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadArticleListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticleListEvent value) load,
    required TResult Function(LoadMoreArticleListEvent value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticleListEvent value)? load,
    TResult Function(LoadMoreArticleListEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadArticleListEvent extends ArticleListEvent {
  const factory LoadArticleListEvent() = _$LoadArticleListEvent;
  const LoadArticleListEvent._() : super._();
}

/// @nodoc
abstract class $LoadMoreArticleListEventCopyWith<$Res> {
  factory $LoadMoreArticleListEventCopyWith(LoadMoreArticleListEvent value,
          $Res Function(LoadMoreArticleListEvent) then) =
      _$LoadMoreArticleListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadMoreArticleListEventCopyWithImpl<$Res>
    extends _$ArticleListEventCopyWithImpl<$Res>
    implements $LoadMoreArticleListEventCopyWith<$Res> {
  _$LoadMoreArticleListEventCopyWithImpl(LoadMoreArticleListEvent _value,
      $Res Function(LoadMoreArticleListEvent) _then)
      : super(_value, (v) => _then(v as LoadMoreArticleListEvent));

  @override
  LoadMoreArticleListEvent get _value =>
      super._value as LoadMoreArticleListEvent;
}

/// @nodoc

class _$LoadMoreArticleListEvent extends LoadMoreArticleListEvent {
  const _$LoadMoreArticleListEvent() : super._();

  @override
  String toString() {
    return 'ArticleListEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadMoreArticleListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticleListEvent value) load,
    required TResult Function(LoadMoreArticleListEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticleListEvent value)? load,
    TResult Function(LoadMoreArticleListEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreArticleListEvent extends ArticleListEvent {
  const factory LoadMoreArticleListEvent() = _$LoadMoreArticleListEvent;
  const LoadMoreArticleListEvent._() : super._();
}

/// @nodoc
class _$ArticleListStateTearOff {
  const _$ArticleListStateTearOff();

  InitialArticleListState initial() {
    return const InitialArticleListState();
  }

  LoadingArticleListState loading() {
    return const LoadingArticleListState();
  }

  LoadedArticleListState loaded(DataList<Article> dataList) {
    return LoadedArticleListState(
      dataList,
    );
  }

  ErrorArticleListState error() {
    return const ErrorArticleListState();
  }
}

/// @nodoc
const $ArticleListState = _$ArticleListStateTearOff();

/// @nodoc
mixin _$ArticleListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DataList<Article> dataList) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DataList<Article> dataList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleListState value) initial,
    required TResult Function(LoadingArticleListState value) loading,
    required TResult Function(LoadedArticleListState value) loaded,
    required TResult Function(ErrorArticleListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleListState value)? initial,
    TResult Function(LoadingArticleListState value)? loading,
    TResult Function(LoadedArticleListState value)? loaded,
    TResult Function(ErrorArticleListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListStateCopyWith<$Res> {
  factory $ArticleListStateCopyWith(
          ArticleListState value, $Res Function(ArticleListState) then) =
      _$ArticleListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleListStateCopyWithImpl<$Res>
    implements $ArticleListStateCopyWith<$Res> {
  _$ArticleListStateCopyWithImpl(this._value, this._then);

  final ArticleListState _value;
  // ignore: unused_field
  final $Res Function(ArticleListState) _then;
}

/// @nodoc
abstract class $InitialArticleListStateCopyWith<$Res> {
  factory $InitialArticleListStateCopyWith(InitialArticleListState value,
          $Res Function(InitialArticleListState) then) =
      _$InitialArticleListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements $InitialArticleListStateCopyWith<$Res> {
  _$InitialArticleListStateCopyWithImpl(InitialArticleListState _value,
      $Res Function(InitialArticleListState) _then)
      : super(_value, (v) => _then(v as InitialArticleListState));

  @override
  InitialArticleListState get _value => super._value as InitialArticleListState;
}

/// @nodoc

class _$InitialArticleListState extends InitialArticleListState {
  const _$InitialArticleListState() : super._();

  @override
  String toString() {
    return 'ArticleListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialArticleListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DataList<Article> dataList) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DataList<Article> dataList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleListState value) initial,
    required TResult Function(LoadingArticleListState value) loading,
    required TResult Function(LoadedArticleListState value) loaded,
    required TResult Function(ErrorArticleListState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleListState value)? initial,
    TResult Function(LoadingArticleListState value)? loading,
    TResult Function(LoadedArticleListState value)? loaded,
    TResult Function(ErrorArticleListState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialArticleListState extends ArticleListState {
  const factory InitialArticleListState() = _$InitialArticleListState;
  const InitialArticleListState._() : super._();
}

/// @nodoc
abstract class $LoadingArticleListStateCopyWith<$Res> {
  factory $LoadingArticleListStateCopyWith(LoadingArticleListState value,
          $Res Function(LoadingArticleListState) then) =
      _$LoadingArticleListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements $LoadingArticleListStateCopyWith<$Res> {
  _$LoadingArticleListStateCopyWithImpl(LoadingArticleListState _value,
      $Res Function(LoadingArticleListState) _then)
      : super(_value, (v) => _then(v as LoadingArticleListState));

  @override
  LoadingArticleListState get _value => super._value as LoadingArticleListState;
}

/// @nodoc

class _$LoadingArticleListState extends LoadingArticleListState {
  const _$LoadingArticleListState() : super._();

  @override
  String toString() {
    return 'ArticleListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingArticleListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DataList<Article> dataList) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DataList<Article> dataList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleListState value) initial,
    required TResult Function(LoadingArticleListState value) loading,
    required TResult Function(LoadedArticleListState value) loaded,
    required TResult Function(ErrorArticleListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleListState value)? initial,
    TResult Function(LoadingArticleListState value)? loading,
    TResult Function(LoadedArticleListState value)? loaded,
    TResult Function(ErrorArticleListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingArticleListState extends ArticleListState {
  const factory LoadingArticleListState() = _$LoadingArticleListState;
  const LoadingArticleListState._() : super._();
}

/// @nodoc
abstract class $LoadedArticleListStateCopyWith<$Res> {
  factory $LoadedArticleListStateCopyWith(LoadedArticleListState value,
          $Res Function(LoadedArticleListState) then) =
      _$LoadedArticleListStateCopyWithImpl<$Res>;
  $Res call({DataList<Article> dataList});
}

/// @nodoc
class _$LoadedArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements $LoadedArticleListStateCopyWith<$Res> {
  _$LoadedArticleListStateCopyWithImpl(LoadedArticleListState _value,
      $Res Function(LoadedArticleListState) _then)
      : super(_value, (v) => _then(v as LoadedArticleListState));

  @override
  LoadedArticleListState get _value => super._value as LoadedArticleListState;

  @override
  $Res call({
    Object? dataList = freezed,
  }) {
    return _then(LoadedArticleListState(
      dataList == freezed
          ? _value.dataList
          : dataList // ignore: cast_nullable_to_non_nullable
              as DataList<Article>,
    ));
  }
}

/// @nodoc

class _$LoadedArticleListState extends LoadedArticleListState {
  const _$LoadedArticleListState(this.dataList) : super._();

  @override
  final DataList<Article> dataList;

  @override
  String toString() {
    return 'ArticleListState.loaded(dataList: $dataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedArticleListState &&
            (identical(other.dataList, dataList) ||
                const DeepCollectionEquality()
                    .equals(other.dataList, dataList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dataList);

  @JsonKey(ignore: true)
  @override
  $LoadedArticleListStateCopyWith<LoadedArticleListState> get copyWith =>
      _$LoadedArticleListStateCopyWithImpl<LoadedArticleListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DataList<Article> dataList) loaded,
    required TResult Function() error,
  }) {
    return loaded(dataList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DataList<Article> dataList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(dataList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleListState value) initial,
    required TResult Function(LoadingArticleListState value) loading,
    required TResult Function(LoadedArticleListState value) loaded,
    required TResult Function(ErrorArticleListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleListState value)? initial,
    TResult Function(LoadingArticleListState value)? loading,
    TResult Function(LoadedArticleListState value)? loaded,
    TResult Function(ErrorArticleListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedArticleListState extends ArticleListState {
  const factory LoadedArticleListState(DataList<Article> dataList) =
      _$LoadedArticleListState;
  const LoadedArticleListState._() : super._();

  DataList<Article> get dataList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedArticleListStateCopyWith<LoadedArticleListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorArticleListStateCopyWith<$Res> {
  factory $ErrorArticleListStateCopyWith(ErrorArticleListState value,
          $Res Function(ErrorArticleListState) then) =
      _$ErrorArticleListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorArticleListStateCopyWithImpl<$Res>
    extends _$ArticleListStateCopyWithImpl<$Res>
    implements $ErrorArticleListStateCopyWith<$Res> {
  _$ErrorArticleListStateCopyWithImpl(
      ErrorArticleListState _value, $Res Function(ErrorArticleListState) _then)
      : super(_value, (v) => _then(v as ErrorArticleListState));

  @override
  ErrorArticleListState get _value => super._value as ErrorArticleListState;
}

/// @nodoc

class _$ErrorArticleListState extends ErrorArticleListState {
  const _$ErrorArticleListState() : super._();

  @override
  String toString() {
    return 'ArticleListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorArticleListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(DataList<Article> dataList) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(DataList<Article> dataList)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleListState value) initial,
    required TResult Function(LoadingArticleListState value) loading,
    required TResult Function(LoadedArticleListState value) loaded,
    required TResult Function(ErrorArticleListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleListState value)? initial,
    TResult Function(LoadingArticleListState value)? loading,
    TResult Function(LoadedArticleListState value)? loaded,
    TResult Function(ErrorArticleListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorArticleListState extends ArticleListState {
  const factory ErrorArticleListState() = _$ErrorArticleListState;
  const ErrorArticleListState._() : super._();
}

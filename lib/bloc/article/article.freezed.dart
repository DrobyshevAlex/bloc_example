// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleEventTearOff {
  const _$ArticleEventTearOff();

  LoadArticleEvent load(int id) {
    return LoadArticleEvent(
      id,
    );
  }
}

/// @nodoc
const $ArticleEvent = _$ArticleEventTearOff();

/// @nodoc
mixin _$ArticleEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticleEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticleEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleEventCopyWith<ArticleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEventCopyWith<$Res> {
  factory $ArticleEventCopyWith(
          ArticleEvent value, $Res Function(ArticleEvent) then) =
      _$ArticleEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$ArticleEventCopyWithImpl<$Res> implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._value, this._then);

  final ArticleEvent _value;
  // ignore: unused_field
  final $Res Function(ArticleEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $LoadArticleEventCopyWith<$Res>
    implements $ArticleEventCopyWith<$Res> {
  factory $LoadArticleEventCopyWith(
          LoadArticleEvent value, $Res Function(LoadArticleEvent) then) =
      _$LoadArticleEventCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class _$LoadArticleEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res>
    implements $LoadArticleEventCopyWith<$Res> {
  _$LoadArticleEventCopyWithImpl(
      LoadArticleEvent _value, $Res Function(LoadArticleEvent) _then)
      : super(_value, (v) => _then(v as LoadArticleEvent));

  @override
  LoadArticleEvent get _value => super._value as LoadArticleEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(LoadArticleEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadArticleEvent extends LoadArticleEvent {
  const _$LoadArticleEvent(this.id) : super._();

  @override
  final int id;

  @override
  String toString() {
    return 'ArticleEvent.load(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadArticleEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $LoadArticleEventCopyWith<LoadArticleEvent> get copyWith =>
      _$LoadArticleEventCopyWithImpl<LoadArticleEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) load,
  }) {
    return load(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadArticleEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadArticleEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LoadArticleEvent extends ArticleEvent {
  const factory LoadArticleEvent(int id) = _$LoadArticleEvent;
  const LoadArticleEvent._() : super._();

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadArticleEventCopyWith<LoadArticleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

  InitialArticleState initial() {
    return const InitialArticleState();
  }

  LoadingArticleState loading() {
    return const LoadingArticleState();
  }

  LoadedArticleState loaded(Article model) {
    return LoadedArticleState(
      model,
    );
  }

  ErrorArticleState error() {
    return const ErrorArticleState();
  }
}

/// @nodoc
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article model) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article model)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleState value) initial,
    required TResult Function(LoadingArticleState value) loading,
    required TResult Function(LoadedArticleState value) loaded,
    required TResult Function(ErrorArticleState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleState value)? initial,
    TResult Function(LoadingArticleState value)? loading,
    TResult Function(LoadedArticleState value)? loaded,
    TResult Function(ErrorArticleState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;
}

/// @nodoc
abstract class $InitialArticleStateCopyWith<$Res> {
  factory $InitialArticleStateCopyWith(
          InitialArticleState value, $Res Function(InitialArticleState) then) =
      _$InitialArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements $InitialArticleStateCopyWith<$Res> {
  _$InitialArticleStateCopyWithImpl(
      InitialArticleState _value, $Res Function(InitialArticleState) _then)
      : super(_value, (v) => _then(v as InitialArticleState));

  @override
  InitialArticleState get _value => super._value as InitialArticleState;
}

/// @nodoc

class _$InitialArticleState extends InitialArticleState {
  const _$InitialArticleState() : super._();

  @override
  String toString() {
    return 'ArticleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitialArticleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article model) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article model)? loaded,
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
    required TResult Function(InitialArticleState value) initial,
    required TResult Function(LoadingArticleState value) loading,
    required TResult Function(LoadedArticleState value) loaded,
    required TResult Function(ErrorArticleState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleState value)? initial,
    TResult Function(LoadingArticleState value)? loading,
    TResult Function(LoadedArticleState value)? loaded,
    TResult Function(ErrorArticleState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialArticleState extends ArticleState {
  const factory InitialArticleState() = _$InitialArticleState;
  const InitialArticleState._() : super._();
}

/// @nodoc
abstract class $LoadingArticleStateCopyWith<$Res> {
  factory $LoadingArticleStateCopyWith(
          LoadingArticleState value, $Res Function(LoadingArticleState) then) =
      _$LoadingArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements $LoadingArticleStateCopyWith<$Res> {
  _$LoadingArticleStateCopyWithImpl(
      LoadingArticleState _value, $Res Function(LoadingArticleState) _then)
      : super(_value, (v) => _then(v as LoadingArticleState));

  @override
  LoadingArticleState get _value => super._value as LoadingArticleState;
}

/// @nodoc

class _$LoadingArticleState extends LoadingArticleState {
  const _$LoadingArticleState() : super._();

  @override
  String toString() {
    return 'ArticleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingArticleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article model) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article model)? loaded,
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
    required TResult Function(InitialArticleState value) initial,
    required TResult Function(LoadingArticleState value) loading,
    required TResult Function(LoadedArticleState value) loaded,
    required TResult Function(ErrorArticleState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleState value)? initial,
    TResult Function(LoadingArticleState value)? loading,
    TResult Function(LoadedArticleState value)? loaded,
    TResult Function(ErrorArticleState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingArticleState extends ArticleState {
  const factory LoadingArticleState() = _$LoadingArticleState;
  const LoadingArticleState._() : super._();
}

/// @nodoc
abstract class $LoadedArticleStateCopyWith<$Res> {
  factory $LoadedArticleStateCopyWith(
          LoadedArticleState value, $Res Function(LoadedArticleState) then) =
      _$LoadedArticleStateCopyWithImpl<$Res>;
  $Res call({Article model});

  $ArticleCopyWith<$Res> get model;
}

/// @nodoc
class _$LoadedArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements $LoadedArticleStateCopyWith<$Res> {
  _$LoadedArticleStateCopyWithImpl(
      LoadedArticleState _value, $Res Function(LoadedArticleState) _then)
      : super(_value, (v) => _then(v as LoadedArticleState));

  @override
  LoadedArticleState get _value => super._value as LoadedArticleState;

  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(LoadedArticleState(
      model == freezed
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }

  @override
  $ArticleCopyWith<$Res> get model {
    return $ArticleCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$LoadedArticleState extends LoadedArticleState {
  const _$LoadedArticleState(this.model) : super._();

  @override
  final Article model;

  @override
  String toString() {
    return 'ArticleState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedArticleState &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  $LoadedArticleStateCopyWith<LoadedArticleState> get copyWith =>
      _$LoadedArticleStateCopyWithImpl<LoadedArticleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article model) loaded,
    required TResult Function() error,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article model)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialArticleState value) initial,
    required TResult Function(LoadingArticleState value) loading,
    required TResult Function(LoadedArticleState value) loaded,
    required TResult Function(ErrorArticleState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleState value)? initial,
    TResult Function(LoadingArticleState value)? loading,
    TResult Function(LoadedArticleState value)? loaded,
    TResult Function(ErrorArticleState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedArticleState extends ArticleState {
  const factory LoadedArticleState(Article model) = _$LoadedArticleState;
  const LoadedArticleState._() : super._();

  Article get model => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedArticleStateCopyWith<LoadedArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorArticleStateCopyWith<$Res> {
  factory $ErrorArticleStateCopyWith(
          ErrorArticleState value, $Res Function(ErrorArticleState) then) =
      _$ErrorArticleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorArticleStateCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res>
    implements $ErrorArticleStateCopyWith<$Res> {
  _$ErrorArticleStateCopyWithImpl(
      ErrorArticleState _value, $Res Function(ErrorArticleState) _then)
      : super(_value, (v) => _then(v as ErrorArticleState));

  @override
  ErrorArticleState get _value => super._value as ErrorArticleState;
}

/// @nodoc

class _$ErrorArticleState extends ErrorArticleState {
  const _$ErrorArticleState() : super._();

  @override
  String toString() {
    return 'ArticleState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorArticleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Article model) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Article model)? loaded,
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
    required TResult Function(InitialArticleState value) initial,
    required TResult Function(LoadingArticleState value) loading,
    required TResult Function(LoadedArticleState value) loaded,
    required TResult Function(ErrorArticleState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialArticleState value)? initial,
    TResult Function(LoadingArticleState value)? loading,
    TResult Function(LoadedArticleState value)? loaded,
    TResult Function(ErrorArticleState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorArticleState extends ArticleState {
  const factory ErrorArticleState() = _$ErrorArticleState;
  const ErrorArticleState._() : super._();
}

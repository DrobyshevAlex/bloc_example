// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
class _$ArticleTearOff {
  const _$ArticleTearOff();

  _Article call(
      {required int id,
      required String slug,
      required String title,
      required String thumb,
      String? image,
      String? content,
      @JsonKey(name: 'meta_description') required String description,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) {
    return _Article(
      id: id,
      slug: slug,
      title: title,
      thumb: thumb,
      image: image,
      content: content,
      description: description,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Article fromJson(Map<String, Object> json) {
    return Article.fromJson(json);
  }
}

/// @nodoc
const $Article = _$ArticleTearOff();

/// @nodoc
mixin _$Article {
  int get id => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumb => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String slug,
      String title,
      String thumb,
      String? image,
      String? content,
      @JsonKey(name: 'meta_description') String description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res> implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  final Article _value;
  // ignore: unused_field
  final $Res Function(Article) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
    Object? image = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$ArticleCopyWith(_Article value, $Res Function(_Article) then) =
      __$ArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String slug,
      String title,
      String thumb,
      String? image,
      String? content,
      @JsonKey(name: 'meta_description') String description,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$ArticleCopyWithImpl<$Res> extends _$ArticleCopyWithImpl<$Res>
    implements _$ArticleCopyWith<$Res> {
  __$ArticleCopyWithImpl(_Article _value, $Res Function(_Article) _then)
      : super(_value, (v) => _then(v as _Article));

  @override
  _Article get _value => super._value as _Article;

  @override
  $Res call({
    Object? id = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? thumb = freezed,
    Object? image = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Article(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumb: thumb == freezed
          ? _value.thumb
          : thumb // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Article extends _Article {
  const _$_Article(
      {required this.id,
      required this.slug,
      required this.title,
      required this.thumb,
      this.image,
      this.content,
      @JsonKey(name: 'meta_description') required this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : super._();

  factory _$_Article.fromJson(Map<String, dynamic> json) =>
      _$_$_ArticleFromJson(json);

  @override
  final int id;
  @override
  final String slug;
  @override
  final String title;
  @override
  final String thumb;
  @override
  final String? image;
  @override
  final String? content;
  @override
  @JsonKey(name: 'meta_description')
  final String description;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Article(id: $id, slug: $slug, title: $title, thumb: $thumb, image: $image, content: $content, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Article &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.slug, slug) ||
                const DeepCollectionEquality().equals(other.slug, slug)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.thumb, thumb) ||
                const DeepCollectionEquality().equals(other.thumb, thumb)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(slug) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(thumb) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$ArticleCopyWith<_Article> get copyWith =>
      __$ArticleCopyWithImpl<_Article>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ArticleToJson(this);
  }
}

abstract class _Article extends Article {
  const factory _Article(
      {required int id,
      required String slug,
      required String title,
      required String thumb,
      String? image,
      String? content,
      @JsonKey(name: 'meta_description') required String description,
      @JsonKey(name: 'created_at') required String createdAt,
      @JsonKey(name: 'updated_at') required String updatedAt}) = _$_Article;
  const _Article._() : super._();

  factory _Article.fromJson(Map<String, dynamic> json) = _$_Article.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get thumb => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'meta_description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ArticleCopyWith<_Article> get copyWith =>
      throw _privateConstructorUsedError;
}

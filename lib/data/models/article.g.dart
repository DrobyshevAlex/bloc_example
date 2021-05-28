// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$_$_ArticleFromJson(Map<String, dynamic> json) {
  return _$_Article(
    id: json['id'] as int,
    slug: json['slug'] as String,
    title: json['title'] as String,
    thumb: json['thumb'] as String,
    image: json['image'] as String?,
    content: json['content'] as String?,
    description: json['meta_description'] as String,
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'title': instance.title,
      'thumb': instance.thumb,
      'image': instance.image,
      'content': instance.content,
      'meta_description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

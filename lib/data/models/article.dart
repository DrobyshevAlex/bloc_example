import 'package:freezed_annotation/freezed_annotation.dart';

import 'data_list.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
class Article with _$Article implements Comparable<Article> {
  const factory Article({
    required int id,
    required String slug,
    required String title,
    required String thumb,
    String? image,
    String? content,
    @JsonKey(name: 'meta_description') required String description,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Article;

  const Article._();

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  @override
  int compareTo(Article other) {
    return other.id.compareTo(id);
  }
}

typedef ArticleList = DataList<Article>;
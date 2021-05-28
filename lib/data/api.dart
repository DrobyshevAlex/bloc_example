import 'package:bloc_example/data/models/article.dart';
import 'package:dio/dio.dart';

typedef JsonResult = Map<String, dynamic>;
typedef JsonListResult = List<dynamic>;

class ApiProvider {
  ApiProvider(Dio client): _client = client;

  final Dio _client;

  // Запрос списка статей
  Future<Iterable<Article>?> fetchArticles(int page) async {
    final Response<JsonListResult> response = await _client.get<JsonListResult>('/articles.json',
      queryParameters: <String, Object>{
        'page': page
      }
    );

    return response.data?.map<Article>((dynamic json) =>
        Article.fromJson(json as Map<String, dynamic>));
  }

  // Запрос полной статьи
  Future<Article?> fetchArticle(int id, String slug) async {
    final Response<JsonResult> response = await _client.get<JsonResult>(
        '/article/$slug-$id.json'
    );

    return response.data != null ? Article.fromJson(response.data!) : null;
  }
}

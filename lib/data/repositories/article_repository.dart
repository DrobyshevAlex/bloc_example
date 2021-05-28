import 'package:bloc_example/data/api.dart';
import 'package:bloc_example/data/models/data_list.dart';
import 'package:bloc_example/data/models/models.dart';

// Репозиторий статей
class ArticleRepository {
  ArticleRepository(this._apiProvider);
  // ApiProvider для получения статей с сервера
  final ApiProvider _apiProvider;
  // Кеш для хранения уже полученных данных
  // Обычно для этой цели используют хранилище типа sqflite, hive, и т.д.
  DataList<Article> _cache = DataList<Article>.fromIterable(const <Article>[]);
  // Простенькая пагинация
  int _page = 1;

  // загрузка списка статей
  Future<DataList<Article>> fetchList({ bool loadMore = false }) async {
    // если данных нет или есть флаг loadMore
    if (loadMore || _cache.isEmpty) {
      // тащим статьи для нужной страницы
      final data = await _apiProvider.fetchArticles(_page);
      if (data?.isNotEmpty == true) {
        // если данные пришли, добавляем список в кеш/стор
        _cache = DataList<Article>.fromIterable(<Article>[
          // уже известные статьи
          ..._cache,
          // новые
          ...data!
        ]);
        // смещаем страницу
        _page ++;
      }
    }
    return _cache;
  }

  // Загрузка тела статьи
  Future<Article?> fetch(int id) async {
    try {
      // проверяем есть ли статья
      final current = _cache.firstWhere((Article model) => model.id == id);
      // если статья есть и контент уже заполнен - просто отдаем ее
      if (current.content != null) {
        return current;
      }

      // Если же контента нет, то загружаем тело статьи
      final model = await _apiProvider.fetchArticle(current.id, current.slug);
      if (model != null) {
        _cache = DataList<Article>.fromIterable(<Article>[
          ..._cache,
          model
        ]);
        return model;
      }
    } on StateError catch (_) {
      // при использовании диплинк или переходе с уведомления может не быть
      // в кеше статьи, запрос статьи все равно нужен
      // я опустил его так как нет этого функционала в данном примере
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/models/models.dart';
import 'package:bloc_example/data/repositories/article_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list.freezed.dart';

@freezed
class ArticleListEvent with _$ArticleListEvent {
  const ArticleListEvent._();

  // Начальная загрузка, при открытии страницы
  const factory ArticleListEvent.load() = LoadArticleListEvent;
  // Загрузка новых данных при прокрутке
  const factory ArticleListEvent.loadMore() = LoadMoreArticleListEvent;
}

@freezed
class ArticleListState with _$ArticleListState {
  const ArticleListState._();

  const factory ArticleListState.initial() = InitialArticleListState;
  // Идет процесс загрузки
  const factory ArticleListState.loading() = LoadingArticleListState;
  // Данные получены
  const factory ArticleListState.loaded(ArticleList dataList) = LoadedArticleListState;
  // Произошла ошибка, тут может понадобиться добавить информацию о ошибке
  const factory ArticleListState.error() = ErrorArticleListState;
}

class ArticleListBLoC extends Bloc<ArticleListEvent, ArticleListState> {
  ArticleListBLoC(this._articleRepository): super(const InitialArticleListState());

  final ArticleRepository _articleRepository;

  @override
  Stream<ArticleListState> mapEventToState(ArticleListEvent event) =>
    event.when<Stream<ArticleListState>>(
      load: _load,
      loadMore: _loadMore,
    );

  Stream<ArticleListState> _load({ bool loadMore = false }) async* {
    // Если это подгрузка по скроллу, то пропускаем стейт загрузки
    // В реальном приложении тут могут быть разные подходы
    // Например индикатор загрузки внизу списка
    // Тогда можно в этот статус сообщать старые данные
    // Или добавить еще один стейт, для индикации, что идет подгрузка
    if (!loadMore) {
      yield const ArticleListState.loading();
    }
    try {
      yield ArticleListState.loaded(
          await _articleRepository.fetchList(loadMore: loadMore)
              .timeout(const Duration(seconds: 10))
      );
    } on DioError catch (_) {
      yield const ArticleListState.error();
    } on TimeoutException catch (_) {
      yield const ArticleListState.error();
    }
  }

  Stream<ArticleListState> _loadMore() async* {
    yield* _load(loadMore: true);
  }
}

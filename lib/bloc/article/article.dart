import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/models/models.dart';
import 'package:bloc_example/data/repositories/article_repository.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

// По аналогии с article_list.dart

@freezed
class ArticleEvent with _$ArticleEvent {
  const ArticleEvent._();

  const factory ArticleEvent.load(int id) = LoadArticleEvent;
}

@freezed
class ArticleState with _$ArticleState {
  const ArticleState._();
  const factory ArticleState.initial() = InitialArticleState;
  const factory ArticleState.loading() = LoadingArticleState;
  const factory ArticleState.loaded(Article model) = LoadedArticleState;
  const factory ArticleState.error() = ErrorArticleState;
}

class ArticleBLoC extends Bloc<ArticleEvent, ArticleState> {
  ArticleBLoC(this._articleRepository) : super(const InitialArticleState());
  final ArticleRepository _articleRepository;

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) =>
    event.when<Stream<ArticleState>>(
      load: _load,
    );

  Stream<ArticleState> _load(int id) async* {
    yield const ArticleState.loading();
    try {
      final model = await _articleRepository.fetch(id)
          .timeout(const Duration(seconds: 10));
      if (model != null) {
        yield ArticleState.loaded(model);
      } else {
        yield const ArticleState.error();
      }
    } on DioError catch (_) {
      yield const ArticleState.error();
    } on TimeoutException catch (_) {
      yield const ArticleState.error();
    }
  }
}

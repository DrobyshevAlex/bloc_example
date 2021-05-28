import 'package:bloc_example/bloc/article/article.dart';
import 'package:bloc_example/data/models/models.dart';
import 'package:bloc_example/data/repositories/article_repository.dart';
import 'package:bloc_example/ui/components/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

// Страница просмотра статьи
class ArticleViewPage extends StatefulWidget {

  /*
    Передаем ид статьи, по нему будем получать статью из репозитория.
    В релаьном приложении Вы можете вывести уже известные данные из кеша репозитория.
    Не хватает только тела статьи и большой картинки.
    В случае открытия по уведомлению или диплинк так же необходимо предусмотреть,
    что в кеше нет данных.
    Для демонстрации блока я не стал делать вывод из кеша уже известных данных.
   */
  const ArticleViewPage(this.articleId, {Key? key}) : super(key: key);
  final int articleId;

  @override
  _ArticleViewPageState createState() => _ArticleViewPageState();
}

class _ArticleViewPageState extends State<ArticleViewPage> {
  // Как и в случае со списком, данный блок нужен только на этой странице.
  // Но тут обойдемся без провайдера.
  late final ArticleBLoC _articleBLoC;

  @override
  void initState() {
    super.initState();
    // создаем блок
    _articleBLoC = ArticleBLoC(context.read<ArticleRepository>())
      ..add(ArticleEvent.load(widget.articleId));
  }

  @override
  void dispose() {
    // не забываем закрыть стрим
    // в случае с BlocProvider это делалось автоматически
    _articleBLoC.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<ArticleBLoC, ArticleState>(
      // в контексте нет нужного блока, передаем напрямую
      bloc: _articleBLoC,
      // тут все по аналогии со списком статей
      builder: (BuildContext context, ArticleState state) {
        if (state is LoadedArticleState) {
          return _ArticleView(state.model);
        } else if (state is ErrorArticleState) {
          return Scaffold(
            body: ErrorTryView(
              onPressed: () {
                _articleBLoC.add(ArticleEvent.load(widget.articleId));
              },
            ),
          );
        }
        return const Scaffold(
          body: LoaderView(),
        );
      }
    );
  }
}

class _ArticleView extends StatelessWidget {
  const _ArticleView(this._model, {Key? key}) : super(key: key);
  final Article _model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_model.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CachedNetworkImage(
              width: double.infinity,
              fit: BoxFit.cover,
              imageUrl: _model.image ?? _model.thumb,
              placeholder: (_, __) => const LoaderView(),
              errorWidget: (_, __, dynamic error) => const Center(
                  child: Icon(Icons.error_outline)),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(_model.title, style: const TextStyle(fontWeight: FontWeight.bold),),

                  Html(
                    data: _model.content,
                  ),

                  Text(DateFormat('dd.MM.y')
                      .format(DateTime.parse(_model.updatedAt)),
                    style: const TextStyle(fontSize: 14.0),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bloc_example/bloc/article/article_list.dart';
import 'package:bloc_example/data/models/models.dart';
import 'package:bloc_example/data/repositories/article_repository.dart';
import 'package:bloc_example/routes.dart';
import 'package:bloc_example/ui/components/components.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleListViewPage extends StatelessWidget {
  const ArticleListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TERRAIDEAS.RU'),
      ),

      // Список статей нужен только на этой странице, поэтому блок создаем тут же
      // Используя BlocProvider можно не заботиться о закрытии блока при dispose
      // BlocProvider это делает сам
      body: BlocProvider<ArticleListBLoC>(
        create: (BuildContext context) => ArticleListBLoC(
            context.read<ArticleRepository>())
              ..add(const ArticleListEvent.load()),
        // Все вложенные виджеты с этого места и далее по дереву
        // получат доступ к ArticleListBLoC
        child: const ArticleListView(),
      ),
    );
  }
}

class ArticleListView extends StatefulWidget {
  const ArticleListView({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _ArticleListViewState();
}

class _ArticleListViewState extends State<ArticleListView> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // Слушаем событие прокрутки
    _controller.addListener(_scrollListener);
    super.initState();
  }

  // Пример как можно организовать прослушку прокрутки для подгрузки данных
  void _scrollListener() {
    // если стало меньше 500 пикселей
    if (_controller.position.extentAfter < 500) {
      // Доступ к блоку который создан в родительском виджете
      context.read<ArticleListBLoC>().add(
          const ArticleListEvent.loadMore()
      );
    }
  }

  @override
  void dispose() {
    // и не забываем отписаться
    _controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // строим UI на основании состояния блока
    return BlocBuilder<ArticleListBLoC, ArticleListState>(
      builder: (BuildContext context, ArticleListState state) {
        // если загружено выводим список статей
        if (state is LoadedArticleListState) {
          return ListView.builder(
            controller: _controller,
            itemCount: state.dataList.length,
            itemBuilder: (BuildContext context, int idx) =>
                _ArticleItemList(model: state.dataList.elementAt(idx),),
          );
        } else if (state is ErrorArticleListState) { // выводим ошибку
          return ErrorTryView(
            onPressed: () {
              // если ошибка
              // пытаемся повторить по клику
              context.read<ArticleListBLoC>().add(
                  const ArticleListEvent.load());
            },
          );
        }
        // в других случаях рисуем индикатор загрузки
        return const LoaderView();
      },
    );
  }
}

// Просто оформление карточки статьи из списка
class _ArticleItemList extends StatelessWidget {
  const _ArticleItemList({Key? key, required Article model}):
        _model = model, super(key: key);
  final Article _model;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () {
      Navigator.of(context).push(Routes.article(_model.id));
    },
    child: Card(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CachedNetworkImage(
            height: 200,
            fit: BoxFit.cover,
            imageUrl: _model.thumb,
            placeholder: (_, __) => const LoaderView(),
            errorWidget: (_, __, dynamic error) => const Center(
                child: Icon(Icons.error_outline)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 8.0,),
                Text(_model.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                const SizedBox(height: 8.0,),
                Text(_model.description),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

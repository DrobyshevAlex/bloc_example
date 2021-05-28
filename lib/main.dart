import 'package:bloc_example/data/api.dart';
import 'package:bloc_example/data/repositories/article_repository.dart';
import 'package:bloc_example/defines.dart';
import 'package:bloc_example/ui/scopes/network.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() {
  // Логирование BLoC в консоль
  Bloc.observer = MyBlocObserver();
  runApp(const AppInjection(child: MyApp()));
}

// Для удобства провайдеры вынесены в отдельный виджет
class AppInjection extends StatelessWidget {
  const AppInjection({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        // Доступ к АПИ может понадобиться из любого виджета
        // например для создания репозитория
        // Этот виджет размещаем выше тех, которые его используют
        Provider<ApiProvider>(
          create: (BuildContext context) => ApiProvider(Dio(
            BaseOptions(
              baseUrl: API_URL,
              connectTimeout: 5000,
              receiveTimeout: 3000,
            )
          )),
        ),

        // Репозиторий статей нужен глобальный
        // для кеширования и доступа из любого места
        RepositoryProvider<ArticleRepository>(
          create: (BuildContext context) =>
              // в данном месте контекст уже содержит ApiProvider
              ArticleRepository(context.read<ApiProvider>()),
        ),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const NetworkScope(),
    );
  }
}

// Просто глобальный лог всех BLoC's
class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- bloc: ${bloc.runtimeType}, change: $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- bloc: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- bloc: ${bloc.runtimeType}');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print('onEvent -- bloc: ${bloc.runtimeType}, event: $event');
  }
}

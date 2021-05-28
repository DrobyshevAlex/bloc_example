import 'package:bloc_example/bloc/bloc.dart';
import 'package:bloc_example/ui/article_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

/*
  Пример Cubit для остлеживания интернет соединения
 */
class NetworkScope extends StatefulWidget {
  const NetworkScope({Key? key}) : super(key: key);

  @override
  _NetworkScopeState createState() => _NetworkScopeState();
}

class _NetworkScopeState extends State<NetworkScope> {
  // Создает Cubit прямо в виджете
  final NetworkState _networkState = NetworkState();
  // Демонстрация вложенного навигатора
  // Навигация будет внутри Stack
  // Может использоваться для независмой навигации
  // например внутри одной страницы PageView с BottomTabBar
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void dispose() {
    // не забываем отписаться
    _networkState.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // обработка кнопки "назад" в андроид для вложенного навигатора
      onWillPop: () async => !await _navigatorKey.currentState!.maybePop(),
      // применим стили Material
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            // Provider.value передает РАНЕЕ СОЗДАННЫЙ объект вниз по дереву
            // Не путать с create
            Provider<NetworkState>.value(
              value: _networkState,
              child: Navigator(
                key: _navigatorKey,
                onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ArticleListViewPage(),
                      settings: settings
                  );
                }
              )
            ),

            // Слушаем Cubit и выводим в Stack поверх всех страниц
            // вложенного навигатора
            BlocBuilder<NetworkState, bool>(
              // т.к. нет в этом месте в контексте нужного Cubit
              // передаем его напрямую
              bloc: _networkState,
              // Вывод информации если коннекта нет
              builder: (_, bool state) => state ? const SizedBox.shrink() : Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Нет соединения с сетью!', textAlign: TextAlign.center,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

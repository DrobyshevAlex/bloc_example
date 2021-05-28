import 'package:bloc_example/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorTryView extends StatelessWidget {
  const ErrorTryView({Key? key, this.onPressed}) : super(key: key);
  // Обработчик кнопки "Повторить"
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Text('Ошибка загрузки!'),
            // Строим UI от состояния сети
            // NetworkState передан из NetworkScope с помощью Provider.value
            BlocBuilder<NetworkState, bool>(
              builder: (BuildContext context, bool state) {
                // Выводим кнопку повторить только если
                // есть подключение к сети и задан обработчик
                if (onPressed != null && state) {
                  return ElevatedButton.icon(
                    onPressed: onPressed,
                    icon: const Icon(Icons.refresh),
                    label: const Text('Повторить'),
                  );
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}

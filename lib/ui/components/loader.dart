import 'package:flutter/material.dart';

// Индикатор загрузки
class LoaderView extends StatelessWidget {
  const LoaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(),);
  }
}

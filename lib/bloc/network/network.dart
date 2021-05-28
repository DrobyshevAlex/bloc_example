import 'dart:async';
import 'package:rxdart/rxdart.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


/*
  Cubit на примере опредения подключения к сети с Connectivity
 */
class NetworkState extends Cubit<bool> {
  NetworkState(): super(false) {
    // определим текущий стейт и стрими его
    Connectivity().checkConnectivity().then(
            (ConnectivityResult result) =>
            emit(result != ConnectivityResult.none)
    );

    // подписываемся на изменния стейта
    _subscription = Connectivity().onConnectivityChanged.
      // пропускаем изменения если прошло меньше 2-х секунд
      // Connectivity меняет стейты при переходе LTE на 3G и тд
      // а так же c WiFi на мобильные данные
      // не зачем моргать в это время статусом
      debounceTime(const Duration(seconds: 2))
        .listen((ConnectivityResult result) {
      emit(result != ConnectivityResult.none);
    });
  }

  late final StreamSubscription<ConnectivityResult> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }
}
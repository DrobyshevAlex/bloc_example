import 'dart:collection';
import 'package:flutter/foundation.dart';

@immutable
class DataList<T> extends Iterable<T> {
  DataList.fromIterable(Iterable<T> list):
        _source = UnmodifiableListView<T>(list.toSet().toList()
          ..sort());

  final UnmodifiableListView<T> _source;

  @override
  Iterator<T> get iterator => _source.iterator;

  @override
  String toString() => 'DataList([${_source.length}])';
}

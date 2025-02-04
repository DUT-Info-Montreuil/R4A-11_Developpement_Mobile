import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:counter_app/models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {

  final CounterModel _model;
  int get counter => _model.counter;

  CounterViewModel(this._model);

  void incrementCounter() {
    _model.incrementCounter();
    notifyListeners();
  }

  void decrementCounter() {
    _model.decrementCounter();
    notifyListeners();
  }
}
import 'package:flutter/cupertino.dart';
class PowerStateModel extends ChangeNotifier{
  int _valtage;
  int _current;
  String _mode;
  int get valtage => _valtage;
  int get current => _current;
  String get mode => _mode;
  PowerStateModel(this._valtage,this._current,this._mode);

  ChangeValtage(int inputValtage){
    _valtage = inputValtage;
    notifyListeners();

  }
  ChangeCurrent(int inputCurrent){
    _current = inputCurrent;
    notifyListeners();
  }
  ChangeMode(String inputMode){
    _mode = inputMode;
    notifyListeners();
  }
}
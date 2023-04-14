import 'package:flutter/cupertino.dart';
class PowerStateModel extends ChangeNotifier{
  int _valtage;
  int _current;
  int _refresh_time;
  String _mode;
  int get valtage => _valtage;
  int get current => _current;
  int get refreshTime => _refresh_time;
  String get mode => _mode;
  PowerStateModel(this._valtage,this._current,this._mode,this._refresh_time);

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
  ChangeRefreshTime(int inputRefreshTime){
    _refresh_time = inputRefreshTime;
    notifyListeners();
  }
}
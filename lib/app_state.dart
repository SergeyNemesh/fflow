import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<CharacterModelStruct> _data = [];
  List<CharacterModelStruct> get data => _data;
  set data(List<CharacterModelStruct> value) {
    _data = value;
  }

  void addToData(CharacterModelStruct value) {
    _data.add(value);
  }

  void removeFromData(CharacterModelStruct value) {
    _data.remove(value);
  }

  void removeAtIndexFromData(int index) {
    _data.removeAt(index);
  }

  void updateDataAtIndex(
    int index,
    CharacterModelStruct Function(CharacterModelStruct) updateFn,
  ) {
    _data[index] = updateFn(_data[index]);
  }

  void insertAtIndexInData(int index, CharacterModelStruct value) {
    _data.insert(index, value);
  }
}
